Feature: Print Hello World
Scenario: Print Hello World
			* print 'Hello World!'
			
			
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
	* print jsonobject.length
	
	
	
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
	* print jsonobject.glossary.GlossDiv.GlossList.GlossEntry.Acronym

Scenario: Assertions Take
    Given url 'https://reqres.in/api/users/2'
    When method GET
    Then status 200
    * print 'I got IP is :', karate.pretty(response)
    Then assert response == '103.69.25.68'
    
Scenario: Get airline data using ID - Basic assertions
    Given url 'https://api.instantwebtools.net'
    And path "v1/airlines"
    And path "345e75e3-740e-4f4d-a34e-da7d2058bb49"
    And header X-Request-id = "Test123"
    When method get
    Then status 200
    And match responseStatus == 200
    And assert responseStatus == 200
    And print "response status code is as below -" + responseStatus
    And print responseStatus
    And def resBody = response
    And print resBody
    And match response == {"_id":"345e75e3-740e-4f4d-a34e-da7d2058bb49","name":"Sri Lankan Airways","country":"Sri Lanka","logo":"https://upload.wikimedia.org/wikipedia/en/thumb/9/9b/Qatar_Airways_Logo.svg/sri_lanka.png","slogan":"From Sri Lanka","head_quaters":"Katunayake, Sri Lanka","website":"www.srilankaaairways.com","established":"1990"}
    And match $ == {"_id":"345e75e3-740e-4f4d-a34e-da7d2058bb49","name":"Sri Lankan Airways","country":"Sri Lanka","logo":"https://upload.wikimedia.org/wikipedia/en/thumb/9/9b/Qatar_Airways_Logo.svg/sri_lanka.png","slogan":"From Sri Lanka","head_quaters":"Katunayake, Sri Lanka","website":"www.srilankaaairways.com","established":"1990"}
    And match response.name == "Sri Lankan Airways"
    And match $.name == "Sri Lankan Airways"
    And print responseHeaders
    And print responseHeaders["Content-Type"]
    And match header Content-Type == "application/json; charset=utf-8"
    And match header Content-Type contains "application/json"
	
