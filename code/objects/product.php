<?php
class Product {
   private $conn;
   private $table_name = "product";
   public $id;

   public function __construct($db)
   {
       $this->conn = $db;
   }

   function read($id){
    $where = $id == null ? "" : " WHERE id = " . $id;
    $query = "SELECT * FROM " . $this->table_name . $where;
    $result = $this->conn->query($query);
    return $result;
    }

    function delete($id) {
        $query = "DELETE FROM " . $this->table_naam . " WHERE id=". $id;
        return $this->conn->query($query);;
    }

    //create one product
    function create($naam, $beschrijving, $prijs, $categorie){
        $query = "INSERT INTO " . $this->table_name." (naam, beschrijving, prijs, categorie_id, toegevoegd_op, gewijzigd_op) VALUES ('$naam', '$beschrijving', '$prijs', '$categorie', NOW(), NOW())";
        echo "Your product has successfully been added.";
    }

    function update($id, $naam, $beschrijving, $prijs, $categorie) {
        $query = "UPDATE $this->table_name SET id='$id', naam='$naam', beschrijving='$beschrijving', prijs= $prijs, categorie_id= $categorie WHERE id=$id";        
        echo "Your product has successfully been updated.";
    }
}