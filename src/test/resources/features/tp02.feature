Feature: API Booker

    # ex-1
    Scenario: Récupérer les réservations
      Given url 'https://restful-booker.herokuapp.com'
      When method get
      Then status 200
      And match response != []

    # ex-2
    Scenario: ex2
      Given url 'https://restful-booker.herokuapp.com/1'
      When method GET
      Then status 200
      And match response contains { firstname: '#string', lastname: '#string', totalprice: '#number' }

    Scenario: ex3
      Given url 'https://restful-booker.herokuapp.com/booking'
      And request { "firstname": "Pierre", "lastname": "Martin", "totalprice": 200, "depositpaid": true, "bookingdates": { "checkin": "2024-05-01", "checkout": "2024-05-05" }, "additionalneeds": "Petit déjeuner" }
      When method POST
      Then status 200
      And match response.bookingid == '#present'

    Scenario: ex4
      Given url 'https://restful-booker.herokuapp.com/booking/1'
      And request { "firstname": "Pierre", "lastname": "Martin", "totalprice": 200, "depositpaid": true, "bookingdates": { "checkin": "2024-05-01", "checkout": "2024-05-05" }, "additionalneeds": "Petit déjeuner" }
      When method PUT
      Then status 200


