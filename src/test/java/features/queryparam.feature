Feature: API call
Scenario: user data
* def query = {status:'active'}
Given url baseUrl
And params query
When method GET
Then status 200
* print response
* print response.length


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
    And match response == {"name":"Sri Lankan Airways","id":13, "country":"Sri Lanka","logo":"https://upload.wikimedia.org/wikipedia/en/thumb/9/9b/Qatar_Airways_Logo.svg/sri_lanka.png","slogan":"From Sri Lanka","head_quaters":"Katunayake, Sri Lanka","website":"www.srilankaairways.com","established":"1990"}
    And match $ == {"name":"Sri Lankan Airways","id":13, "country":"Sri Lanka","logo":"https://upload.wikimedia.org/wikipedia/en/thumb/9/9b/Qatar_Airways_Logo.svg/sri_lanka.png","slogan":"From Sri Lanka","head_quaters":"Katunayake, Sri Lanka","website":"www.srilankaairways.com","established":"1990"}
    And match response.name == "Sri Lankan Airways"
    And match $.name == "Sri Lankan Airways"
    And print responseHeaders
    And print responseHeaders["Content-Type"][0]
    And match header Content-Type == "application/json; charset=utf-8"
    And match header Content-Type contains "application/json"
    And match karate.response.header('Content-Type') == "application/json; charset=utf-8"








Scenario: test looping
Given url 'https://gorest.co.in/public/v1/users'
When method GET
Then status 200
 * print response
When def output = []
And eval for(var i=0;i<response.data.length;i++)
Then print 'hello'