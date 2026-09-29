
If (CountriesObj.length=0)
	// Transforms 4 arrays in one object collection
	ARRAY TO COLLECTION:C1563(CountriesObj; ISO_3166_1; "ISO_3166_1"; Country; "Country"; Surface; "Surface"; Continent; "Continent")
	
	CountriesObj:=CountriesObj
	
	CLEAR VARIABLE:C89(ISO_3166_1)
	CLEAR VARIABLE:C89(Country)
	CLEAR VARIABLE:C89(Surface)
	CLEAR VARIABLE:C89(Continent)
End if 