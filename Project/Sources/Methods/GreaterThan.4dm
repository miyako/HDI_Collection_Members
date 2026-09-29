//%attributes = {}
// ----------------------------------------------------
// Méthode : GreaterThan
// Description
// Call back function.
// Search the element greater than the value past in parameter
// Paramètres
// $1 -> object with 2 properties
// $1.value -> element value to be evaluated
// $1.result ->  (boolean) true if the element value is greater than the value past in parameter ($2)
// $2 -> Value min
// ----------------------------------------------------

C_LONGINT:C283($2)
C_OBJECT:C1216($1)

$1.result:=$1.value>=$2