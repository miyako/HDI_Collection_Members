C_COLLECTION:C1488($rows)
C_LONGINT:C283($i)
C_TEXT:C284($separator)

If (countriescsv#"")
	
	$separator:="\r"
	
	// split the initial string by rows
	$rows:=Split string:C1554(countriescsv; $separator)
	
	CountriesSplit:=New collection:C1472
	For ($i; 0; $rows.length-1)
		
		// Split rows by elements
		CountriesSplit.push(Split string:C1554($rows[$i]; ";"))
		
	End for 
	
	countriescsv:=""
	
End if 