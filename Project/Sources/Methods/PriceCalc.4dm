//%attributes = {}
// ----------------------------------------------------
// Méthode : PriceCalc
// Description
// Call back function.
// Transforms the value in an object with some properties for the examples
// Paramètres
// $1 -> object with 2 properties
// $1.value -> element value to be evaluated
// $1.result -> new object
// ----------------------------------------------------

C_OBJECT:C1216($prices; $1)

$prices:=New object:C1471

$prices.PurchasePrice:=$1.value
$prices.Coefficient:=(Random:C100%2)+2
$prices.SalesPriceExclTax:=$prices.PurchasePrice*$prices.Coefficient
$prices.Quantity:=(Random:C100%100)+1
$prices.TotalPurchasePrice:=$prices.PurchasePrice*$prices.Quantity

$1.result:=$prices
