Feature: Validate Status Code and response for POST request
#7b70426fb40390d797b59a41ccd67f33d40e5bd317ffcc9226e3debf877eeece
  Background: 
    * url 'https://gorest.co.in/public/v2'
    * header Authorization = 'Bearer 7b70426fb40390d797b59a41ccd67f33d40e5bd317ffcc9226e3debf877eeece'
























  Scenario: Make a simple POST request without Authorization Header and validate status code as 201
    Given url 'https://reqres.in/api/users'
    And request {"name": "morpheus","job": "leader"}
    When method post
    Then status 201
    And print response

  Scenario: Make a POST request  with Authorization Header and validate status code as 201
    Given path '/users'
    Then request {"name":"Tom Shadows12","email":"shadows121Tom@wintheiser.io","gender":"male","status":"active"}
    When method post
    Then status 201
    And print response

  Scenario: Make a POST request using a json file and Validate the response
    Given path '/users'
    And def requestbody = read("request.json")
    And request requestbody
    When method post
    Then status 201
    And match response == {"status": "active"}
