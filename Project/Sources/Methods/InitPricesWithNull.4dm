//%attributes = {"invisible":true}
// ----------------------------------------------------
// Méthode : InitPricesWithNull
// Description
// insert 3 null values in a collection
//
// Paramètres
// ----------------------------------------------------

#DECLARE->$c : Collection

$c:=InitPrices

$c.insert(Random:C100%20; Null:C1517)
$c.insert(Random:C100%20; Null:C1517)
$c.insert(Random:C100%20; Null:C1517)
