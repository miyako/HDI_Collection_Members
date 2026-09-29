// Returns true if all elements in ValRes collection successfully passed a test implemented in the provided GreaterThan function
AllRes:=ValRes.every("GreaterThan"; 100)

OBJECT SET VISIBLE:C603(*; "AllRes"; True:C214)