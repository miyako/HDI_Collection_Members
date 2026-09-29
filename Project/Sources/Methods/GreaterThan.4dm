//%attributes = {"invisible":true}
// ----------------------------------------------------
// Méthode : GreaterThan
// Description
// Call back function.
// Search the element greater than the value past in parameter
// Paramètres
// $param -> object with 2 properties
// $param.value -> element value to be evaluated
// $param.result ->  (boolean) true if the element value is greater than the value past in parameter ($minValue)
// $minValue -> Value min
// ----------------------------------------------------

#DECLARE($param : Object; $minValue : Integer)

$param.result:=$param.value>=$minValue