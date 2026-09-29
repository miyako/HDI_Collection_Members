//%attributes = {"invisible":true}
// page 2
CountriesCsv:=Document to text:C1236(Get 4D folder:C485(Current resources folder:K5:16)+"Countries.csv"; "UTF-8"; Document with CR:K24:21)
CountriesSplit:=New collection:C1472

// page 3 / page 8
CountriesObj:=InitCountriesObj
CLEAR VARIABLE:C89(ISO_3166_1)
CLEAR VARIABLE:C89(Country)
CLEAR VARIABLE:C89(Surface)
CLEAR VARIABLE:C89(Continent)

// page 4 / page 7
Countries:=InitCountries
CountriesCopy:=New collection:C1472

// page 5
Numbers:=InitPrices
Doubles:=New collection:C1472

//page 6
PricesList:=InitPrices.map("PriceCalc")
CLEAR VARIABLE:C89(AverageRes)
CLEAR VARIABLE:C89(MinRes)
CLEAR VARIABLE:C89(SumRes)
CLEAR VARIABLE:C89(MaxRes)
CLEAR VARIABLE:C89(ReduceRes)

// page 7
CLEAR VARIABLE:C89(ValueToInsert)
ValueToInsert:="Hello world"
RowNumber:=0

// page 8
FindRes:=New collection:C1472
CLEAR VARIABLE:C89(ASRes)
ExtractProperty:="Continent"


// page 9 / page 10
CountriesWithNull:=Countries.copy()
CountriesWithNull.insert(Random:C100%20; Null:C1517).insert(Random:C100%20; Null:C1517).insert(Random:C100%20; Null:C1517)
PricesWithNull:=InitPricesWithNull
TypeMix:=CountriesWithNull.concat(PricesWithNull)
CLEAR VARIABLE:C89(FirstRes)
CLEAR VARIABLE:C89(LastRes)
CLEAR VARIABLE:C89(CountRes)
CLEAR VARIABLE:C89(CountValRes)
CLEAR VARIABLE:C89(LengthRes)

// page 10

CLEAR VARIABLE:C89(EqualRes)
ValRes:=New collection:C1472

// page 11
Coll1:=InitPrices.slice(0; 5)
Coll2:=InitPrices(100).slice(0; 5)
CollectionRes:=New collection:C1472
