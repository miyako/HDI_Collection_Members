//%attributes = {"invisible":true}
// ----------------------------------------------------
// Méthode : InitCountriesObj
// Description
// Fill a collection with all information of [Countries]CountryInfo
//
// ----------------------------------------------------

#DECLARE->$c : Collection
var $i; $num : Integer
ARRAY OBJECT:C1221($a; 0)

$c:=New collection:C1472

ALL RECORDS:C47([Countries:3])

$num:=Records in table:C83([Countries:3])

SELECTION TO ARRAY:C260([Countries:3]CountryInfo:2; $a)
ARRAY TO COLLECTION:C1563($c; $a)
