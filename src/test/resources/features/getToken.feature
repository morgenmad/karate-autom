Feature: Générer un Token d'Authentification

  @token
  Scenario: POST /auth génère un token valide avec client credentials
    Given url 'https://xray.cloud.getxray.app/api/v1/authenticate'
    And header Content-Type = 'application/json'
    And request
    """
    {
      "client_id": "E6DF0E1B2CD34F7EAA7CFAAC062E98DC",
      "client_secret": "95ca35b6c8cabffe5d0c5ec1653d3566a75de04b811e28a54850316c362f2be7"
    }
    """
    When method post
    Then status 200