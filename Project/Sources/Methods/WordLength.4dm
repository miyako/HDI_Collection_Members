//%attributes = {}
// ----------------------------------------------------
// Méthode : WordLength
// Description
// Call back function.
// Compare the length of 2 strings
// Paramètres
// $1 -> object with 3 properties
// $1.value -> element value to be evaluated
// $1.value2 -> second element value to be compared
// $1.result -> (boolean)true if $1.value greater than $1.value2
// ----------------------------------------------------

C_OBJECT:C1216($1)

$1.result:=Length:C16(String:C10($1.value))>Length:C16(String:C10($1.value2))