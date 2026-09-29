//%attributes = {"invisible":true}
// ----------------------------------------------------
// Méthode : PriceCalc
// Description
// Call back function.
// Transforms the value in an object with some properties for the examples
// Paramètres
// $param -> object with 2 properties
// $param.value -> element value to be evaluated
// $param.result -> new object
// ----------------------------------------------------

#DECLARE($param : Object)
var $prices : Object

$prices:=New object:C1471

$prices.PurchasePrice:=$param.value
$prices.Coefficient:=(Random:C100%2)+2
$prices.SalesPriceExclTax:=$prices.PurchasePrice*$prices.Coefficient
$prices.Quantity:=(Random:C100%100)+1
$prices.TotalPurchasePrice:=$prices.PurchasePrice*$prices.Quantity

$param.result:=$prices
