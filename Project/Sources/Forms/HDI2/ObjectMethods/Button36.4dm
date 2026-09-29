// Creates a new collection of objects based upon CountriesObj collection of objects, from which Country and Continent properties are copied
FindRes:=CountriesObj.extract("Country"; "Name"; "Continent"; "Area")

