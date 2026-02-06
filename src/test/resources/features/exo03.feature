Feature: Test POST avec création de données

  Scenario: POST d'un nouvel article et validation de la réponse

    Given url 'https://jsonplaceholder.typicode.com/posts'
    And request
    """
    {"userId": 1,"title": "Mon titre","body": "Ceci est le contenu de mon article"}
    """
    When method post
    Then status 201
    And match response.id == '#present'
    And match response.userId == 1
    And match response.title == "Mon titre"
    And match response.body == "Ceci est le contenu de mon article"
