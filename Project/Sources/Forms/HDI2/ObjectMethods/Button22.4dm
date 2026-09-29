// Returns true if at least one element in ValRes collection successfully passed a test implemented in the provided GreaterThan function
AL1Res:=ValRes.some("GreaterThan"; 100)

OBJECT SET VISIBLE:C603(*; "AtLeast1Res"; True:C214)