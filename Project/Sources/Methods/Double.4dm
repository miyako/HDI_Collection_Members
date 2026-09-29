//%attributes = {}
// ----------------------------------------------------
// Méthode : Double
// Description
// Call back function.
// Returns an object with the initial value and the double of the value
// Paramètres
// $1 -> object with 2 properties
// $1.value -> element value to be evaluated
// $1.result -> New object
// $1.result.Init -> Initial value ($1.value)
// $1.result.Double -> Double of initial value ($1.value*2)
// ----------------------------------------------------

C_OBJECT:C1216($d; $1)

$d:=New object:C1471
$d.Init:=$1.value
$d.Double:=$1.value*2
$1.result:=$d
