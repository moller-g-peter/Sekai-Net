<?php

//inherits all public PDOHelper methods
class ContentQueries extends PDOHelper {
  //later when we have login in place, real user_info
  //will be stored in the property user_info.
  //for now let's just fake it
  protected $user_info = array("user_id" => 1);


  /**
   * Pages
   */

  public function saveNewPage($page_data) {
    //adding user_id before insert
    $page_data[":user_id"] = $this->user_info["user_id"];

    //extract and remove page path to prevent crash on insert page
    $page_path = $page_data[":url"];
    unset($page_data[":url"]);
    //extract and remove page menu data to prevent crash on insert page
    $menu_data = $page_data["menuData"];
    unset($page_data["menuData"]);

    $sql = "INSERT INTO pages (title, body, user_id) VALUES (:title, :body, :user_id)";
    //since we are using prepared SQL statements, 
    //SQL and data are sent separately to the query method
    // var_dump($page_data);
    //first insert into the pages table
    $this->query($sql, $page_data);

    //then find pid of new page by selecting the latest page 
    //in the pages table
    $sql2 = "SELECT pid FROM pages ORDER BY created DESC LIMIT 1";
    $new_pid = $this->query($sql2);
    //extract pid from the array we get back
    $new_pid = $new_pid[0]["pid"];

    //insert new page url alias
    $sql3 = "INSERT INTO url_alias (path, pid) VALUES (:path, :pid)";
    $url_data = array(":path" => $page_path, ":pid" => $new_pid);
    $this->query($sql3, $url_data);

    //if we are adding the page to a menu, do so
    // if (isset($menu_data)) {
    //   $sql4 = "INSERT INTO menu_links (title, path, menu, plid, weight) VALUES (:title, :path, :menu_name, :plid, :weight)";
    //   $menu_data = array(
    //     ":title" => $menu_data["title"],
    //     ":path" => $page_path,
    //     ":plid" => $menu_data["parent"]["mlid"] ? $menu_data["parent"]["mlid"] : null,
    //     ":weight" => $menu_data["weight"],
    //   );
    //   $this->query($sql4, $menu_data);
    // }

    return true;
  }

    public function saveMenuTitle($save_links) {
        //adding user_id before insert
        $sql = "INSERT INTO menu_links (path, title) VALUES (:url, :menuTitle)";
        $this->query($sql, $save_links);
        // i detta fall, "save_links" kan heta va fan som helst, 
        // bara inparameter och den under är samma namn
        // var_dump($save_links);
        }


    public function contactPHP() {
        $sql = "SELECT * FROM menu_links ORDER BY weight";
        
        //var_dump($menu_name);
        return $this->query($sql);
    }

}
