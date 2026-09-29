C_TEXT:C284($s)

If (countries.length>0)
	// Removes the last element from the collection and returns it in $s
	$s:=countries.pop()
	// Appends $s to the end of the collection 
	CountriesCopy.push($s)
	
	countries:=countries
	CountriesCopy:=CountriesCopy
End if 