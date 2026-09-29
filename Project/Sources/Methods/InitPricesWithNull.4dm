//%attributes = {}
// ----------------------------------------------------
// Méthode : InitPricesWithNull
// Description
// insert 3 null values in a collection
//
// Paramètres
// ----------------------------------------------------

C_COLLECTION:C1488($c; $0)

$c:=InitPrices

$c.insert(Random:C100%20; Null:C1517)
$c.insert(Random:C100%20; Null:C1517)
$c.insert(Random:C100%20; Null:C1517)

$0:=$c