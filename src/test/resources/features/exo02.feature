Feature: Test avec réutilisation de réponse

  Scenario: Test qui enchaîne deux requêtes

    Given url 'https://jsonplaceholder.typicode.com/users/1'
    When method get
    Then status 200
    And def userId = response.id

    Given url 'https://jsonplaceholder.typicode.com/posts'
    And param userId = userId
    When method get
    Then status 200
    And match each response[*].userId == userId