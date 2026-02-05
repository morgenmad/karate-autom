@demo

  Feature: Tester reponse API

    Scenario: test reponse Get OK

      Given url 'https://reqres.in/api/users?page=1'
      When method get
      Then status 200
      And print 'la réponse est : ', reponse