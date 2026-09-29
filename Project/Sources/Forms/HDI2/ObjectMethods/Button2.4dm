//%attributes = {"invisible":true}
var $rows : Collection
var $i : Integer
var $separator : Text

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
