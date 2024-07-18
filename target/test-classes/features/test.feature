Feature: Call Java

		@smoke @regression
    Scenario: Call Java
    * def objHelper = Java.type('package1.Helper')
    * def result = objHelper.printName('Pramod')
    * assert result == 'hello Pramod'
