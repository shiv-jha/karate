Feature: API call
Scenario: user data
Given url baseUrl
#And path '6816206'
When method GET
Then status 200
* print response
* def jsonres = response
* print jsonres.name
#* match jsonres.name == 'Karthik Agarwal'