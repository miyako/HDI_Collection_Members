//%attributes = {"invisible":true}
// ----------------------------------------------------
// Méthode : Double
// Description
// Call back function.
// Returns an object with the initial value and the double of the value
// Paramètres
// $param -> object with 2 properties
// $param.value -> element value to be evaluated
// $param.result -> New object
// $param.result.Init -> Initial value ($param.value)
// $param.result.Double -> Double of initial value ($param.value*2)
// ----------------------------------------------------

#DECLARE($param : Object)
var $d : Object

$d:=New object:C1471
$d.Init:=$param.value
$d.Double:=$param.value*2
$param.result:=$d
