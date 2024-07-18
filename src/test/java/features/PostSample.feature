Feature: Sample post API
Background: 
    * url 'https://gorest.co.in/public/v2'
    * header Authorization = 'Bearer 7b70426fb40390d797b59a41ccd67f33d40e5bd317ffcc9226e3debf877eeece'

Scenario: Validate sample POST API
Given url 'https://reqres.in/api/users'
And request {"name": "shiva123","job": "trainer"}
When method post
Then status 201
Then match response.job == 'trainer'
	* print response.name
	


Scenario: Make a POST request  with Authorization Header and validate status code as 201
    Given path '/users'
    Then request {"name":"Tom Shadows12","email":"shadows121Tom@wintheiser.io","gender":"male","status":"active"}
    When method post
    Then status 201
    And print response
