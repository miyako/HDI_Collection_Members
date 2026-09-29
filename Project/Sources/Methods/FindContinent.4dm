//%attributes = {}
// ----------------------------------------------------
// Méthode : FindContinent
// Description
// Call back function.
// Searches specific continent in the collection
// Paramètres
// $1 -> object with 2 properties
// $1.value -> element value to be evaluated
// $1.result ->  (boolean) true if the element value matches with the continent past in parameter ($2)
// $2 -> Continent search
// ----------------------------------------------------

C_OBJECT:C1216($1)
C_TEXT:C284($2)

$1.result:=$1.value.Continent=$2
