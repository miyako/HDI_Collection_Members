//%attributes = {"invisible":true}
// ----------------------------------------------------
// Méthode : FindContinent
// Description
// Call back function.
// Searches specific continent in the collection
// Paramètres
// $param -> object with 2 properties
// $param.value -> element value to be evaluated
// $param.result ->  (boolean) true if the element value matches with the continent past in parameter ($search)
// $search -> Continent search
// ----------------------------------------------------

#DECLARE($param : Object; $search : Text)

$param.result:=$param.value.Continent=$search
