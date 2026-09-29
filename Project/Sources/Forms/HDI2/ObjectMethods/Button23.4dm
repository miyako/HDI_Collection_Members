C_TEXT:C284($s)

If (countries.length>0)
	// Removes the first element of the collection and returns it in $s 
	$s:=countries.shift()
	// Inserts $s at the beginning of the collection
	CountriesCopy.unshift($s)
	
	countries:=countries
	CountriesCopy:=CountriesCopy
End if 