Feature: Test avec réutilisation de réponse

  Scenario: Test qui enchaîne deux requêtes

    Given url 'https://jsonplaceholder.typicode.com/users/1'
    When method get
    Then status 200

    # je récupère le premier element du .json
    And def firstuser = response[0]
    # je prends l'id de l'élément 1
    And def userId = firstuser.id

    Given url https://jsonplaceholder.typicode.com/posts?userId={id}
    And param userId = 'userId'
    And method get
    Then match response == userId
    And status 200





