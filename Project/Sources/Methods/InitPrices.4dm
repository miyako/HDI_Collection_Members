//%attributes = {}
// ----------------------------------------------------
// Méthode : InitPrices
// Description
// Init a list of random integer 
//
// Paramètres
// ----------------------------------------------------

C_LONGINT:C283($i; $1; $offset)
C_COLLECTION:C1488($c; $0)

If (Count parameters:C259>0)
	$offset:=$1
Else 
	$offset:=1
End if 

$c:=New collection:C1472

For ($i; 1; 20)
	$c.push((Random:C100%11)+$offset)
End for 

$0:=$c
