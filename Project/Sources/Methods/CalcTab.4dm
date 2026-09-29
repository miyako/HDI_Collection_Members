//%attributes = {}
// ----------------------------------------------------
// Méthode : CalcTab
// Description
// Start calucl of calculation tab
// ----------------------------------------------------

C_REAL:C285($average)

// Returns the arithmetic mean (average) of defined values in PricesList collection
$average:=PricesList.average("PurchasePrice")
AverageRes:=Round:C94($average; 2)

// returns the element with the smallest value in PricesList collection
MinRes:=PricesList.min("PurchasePrice")

// Returns the element with the highest value in PricesList collection
MaxRes:=PricesList.max("PurchasePrice")

// Returns the sum for all values in PricesList collection
SumRes:=PricesList.sum("TotalPurchasePrice")

// Applies TotalPriceExclTax callback function against an accumulator and each element in the collection to reduce it to a single value
ReduceRes:=PricesList.reduce("TotalPriceExclTax"; 0)