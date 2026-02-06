Feature: Test API REST simple


  Scenario: Faire une requête GET sur l'endpoint /posts/1
    Given url 'https://jsonplaceholder.typicode.com/posts/1'
    When method get
    Then status 200

    And match response.title == "sunt aut facere repellat provident occaecati excepturi optio reprehenderit"
    And match response.userId == 1