//%attributes = {"invisible":true}
// ----------------------------------------------------
// Méthode : WordLength
// Description
// Call back function.
// Compare the length of 2 strings
// Paramètres
// $param -> object with 3 properties
// $param.value -> element value to be evaluated
// $param.value2 -> second element value to be compared
// $param.result -> (boolean)true if $param.value greater than $param.value2
// ----------------------------------------------------

#DECLARE($param : Object)

$param.result:=Length:C16(String:C10($param.value))>Length:C16(String:C10($param.value2))