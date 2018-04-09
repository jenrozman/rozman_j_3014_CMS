<?php
  function single_edit($tbl, $col, $id){

    $result = getSingle($tbl, $col, $id);//now if you change the tbl and col(tbl_movies & movies_id), it still will update dynamically
    $getResult = mysqli_fetch_array($result); //go into tbl_movies and gets the first one in the list

    echo"<form action=\"phpscripts/edit.php\" method=\"post\">";    //the actual form
      echo "<input hidden name=\"tbl\" value=\"{$tbl}\">";//inject into post array through a hidden area
      echo "<input hidden name=\"col\" value=\"{$col}\">";
      echo "<input hidden name=\"id\" value=\"{$id}\">";
    //echo mysqli_num_fields($result);    //need to know the type of each column/how many, and the name
    for($i=0; $i<mysqli_num_fields($result); $i++){//grabbing col names + type. loop($i=...) since theres multiple
      $dataType = mysqli_fetch_field_direct($result, $i); //goes to the object directly,the i is its position
      $fieldName = $dataType->name; //-> is like the #dataType[0]
      $fieldType = $dataType->type;

      if($fieldName != $col){//you dont want to show the id, so you're skipping the first part of the column. if the field name is not the col, do this
        echo "<label>{$fieldName}</label><br>";//now, if you change it on the editall, it will change to that tbl(tbl_cast only shows 1 since it hides the first 1=id)
          if($fieldType != "252"){
            echo "<input type=\"text\" name=\"{$fieldName}\" value=\"{$getResult[$i]}\"><br><br>";
          }else{
            echo "<textarea name=\"{$fieldName}\">{$getResult[$i]}</textarea>";
          }
        }
      //echo $fieldName."<br>"; //varchar will always be 252, text 253
      //echo $fieldType."<br><br>";
    }
echo "<input type=\"submit\" name=\"submit\" value=\"Save Changes\">";
echo "</form>";

  }

 ?>
