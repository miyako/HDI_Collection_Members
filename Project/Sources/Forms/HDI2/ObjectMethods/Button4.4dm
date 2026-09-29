
If (CountriesObj.length>0)
	// Transform the collection in serveral arrays
	COLLECTION TO ARRAY:C1562(CountriesObj; ISO_3166_1; "ISO_3166_1"; Country; "Country"; Surface; "Surface"; Continent; "Continent")
	
	CountriesObj.clear()
	CountriesObj:=CountriesObj
End if 
