C_LONGINT:C283($i)
C_COLLECTION:C1488($c)

$c:=New collection:C1472


If (CountriesSplit.length>0)
	For ($i; 0; CountriesSplit.length-1)
		// Joins all the elements of CountriesSplit[$i] collection in a string with separator ";"
		$c.push(CountriesSplit[$i].join(";"))
		
	End for 
	
	// Joins all the elements of $c collection in a string with separator "\r\n" 
	CountriesCsv:=$c.join("\r\n")
	
	CountriesSplit:=New collection:C1472
End if 


