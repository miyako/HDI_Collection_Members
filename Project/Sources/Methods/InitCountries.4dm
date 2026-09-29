//%attributes = {"invisible":true}
// ----------------------------------------------------
// Méthode : InitCountries
// Description
// Create random list of countries name
// Paramètres
// $0 -> Collection of countries name
// ----------------------------------------------------

C_COLLECTION:C1488($c; $0)
C_COLLECTION:C1488($num)
C_LONGINT:C283($i)

$num:=New collection:C1472
$c:=New collection:C1472

While ($num.length<=20)
	$num.push(Random:C100%200)
End while 

For ($i; 0; $num.length-1)
	$c.push(CountriesObj[$num[$i]].Country)
End for 

$0:=$c

