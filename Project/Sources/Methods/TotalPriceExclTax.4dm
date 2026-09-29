//%attributes = {"invisible":true}
// ----------------------------------------------------
// Méthode : TotalPriceExclTax
// Description
// Call back function.
// Calcul total price excluding tax
// Paramètres
// $param -> object with 2 properties
// $param.value -> element value to be evaluated
// $param.accumulator -> value to be modified by the function
// ----------------------------------------------------

#DECLARE($param : Object)

$param.accumulator:=$param.accumulator+($param.value.SalesPriceExclTax*$param.value.Quantity)