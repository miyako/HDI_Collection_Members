//%attributes = {"invisible":true}
// ----------------------------------------------------
// Méthode : InitPrices
// Description
// Init a list of random integer 
//
// Paramètres
// ----------------------------------------------------

#DECLARE($offset : Integer)->$c : Collection
var $i : Integer

If (Count parameters:C259=0)
	$offset:=1
End if 

$c:=New collection:C1472

For ($i; 1; 20)
	$c.push((Random:C100%11)+$offset)
End for 
