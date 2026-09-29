


Case of 
		
	: (Form event code:C388=On Load:K2:1)
		
		CountriesCopy:=New collection:C1472
		
		READ ONLY:C145(*)
		
		ALL RECORDS:C47([DICO:2])
		InitInfo
		
		GOTO SELECTED RECORD:C245([INFO:1]; 2)
		vDescription2:=[INFO:1]Description:2
		
		
		
	: (Form event code:C388=On Page Change:K2:54)
		Init
		
		
End case 

