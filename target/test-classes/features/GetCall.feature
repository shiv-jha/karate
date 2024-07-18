Feature: Validate Status Code for GET request

Scenario Outline: Make a GET request and Validate status code as 200

Given url baseUrl
And path "api/users/"
And path "<user_id>"
When method GET
	* print response.data
Then status 200
#Then match response == {"data":{"id":2,"email":"janet.weaver@reqres.in","first_name":"Janet","last_name":"Weaver","avatar":"https://reqres.in/img/faces/2-image.jpg"},"support":{"url":"https://reqres.in/#support-heading","text":"To keep ReqRes free, contributions towards server costs are appreciated!"}}
#And match response.data[0].email == 'janet.weaver@reqres.in'
And match response.data.first_name == '<first_name>'

#	Examples:
	#	|user_id|first_name|
	#	|2|Janet|
	#	|3|Emma|
	#	|4|Eve|
	
	 Examples:
     | karate.read("file:src/test/java/package1/data_driving.csv")|


