Feature: Exercice 4 - Charger et utiliser des données JSON

  Background:
    Given url 'https://jsonplaceholder.typicode.com'

  Scenario: Créer un post à partir d'un fichier externe
    And def var = read('../new-post.json')
    Given path 'posts'
    And request var
    When method post
    Then status 201
    And match response contains var
    And match response.title == var.title