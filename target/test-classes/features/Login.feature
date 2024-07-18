Feature: Login to VWO
    Scenario: VALID Login
    Given url 'https://app.vwo.com/login'
    And request
        """
        {"username":"training1@training.com","password":"Training1$","remember":false,"recaptcha_response_field":""}
        """ 
        When method POST
        * def cookieValue = responseCookies
        * print cookieValue
        Then status 200

    Scenario: INVALID Login
    Given url 'https://app.vwo.com/login'
    And request
        """
        {"username":"training1@trainingxyz.com","password":"Training1$","remember":false,"recaptcha_response_field":""}
        """
      
        When method POST
        Then status 401