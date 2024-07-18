Feature: print hello
Scenario: first scenario
	* print 'hello'
	* print 'shiv'

Scenario: Declare and print
	* def balance = 200
	* print 'total amount' + balance
	
Scenario: json reading
	* def jsonobject =
	"""
	[
	{"name" : "abc",
	"city" : "hyderabad"
	},
	{"name" : "def",
	"city" : "banglore"
	}
	]
	"""
	* print jsonobject[0].name
	
Scenario: Complex Json
	* def jsonobject =
	"""
	{
    "glossary": {
        "title": "example glossary",
		"GlossDiv": {
            "title": "S",
			"GlossList": {
                "GlossEntry": {
                    "ID": "SGML",
					"SortAs": "SGML",
					"GlossTerm": "Standard Generalized Markup Language",
					"Acronym": "SGML",
					"Abbrev": "ISO 8879:1986",
					"GlossDef": {
                        "para": "A meta-markup language, used to create markup languages such as DocBook.",
						"GlossSeeAlso": ["GML", "XML"]
                    },
					"GlossSee": "markup"
                }
            }
        }
    }
}
"""
	* print jsonobject.glossary
	* print jsonobject.glossary.title
	