//%attributes = {}
// ----------------------------------------------------
// Méthode : TotalPriceExclTax
// Description
// Call back function.
// Calcul total price excluding tax
// Paramètres
// $1 -> object with 2 properties
// $1.value -> element value to be evaluated
// $1.accumulator -> value to be modified by the function
// ----------------------------------------------------

C_OBJECT:C1216($1)

$1.accumulator:=$1.accumulator+($1.value.SalesPriceExclTax*$1.value.Quantity)