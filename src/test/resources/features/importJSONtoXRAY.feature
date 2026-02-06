Feature: Importation du Json vers jira

  @tokenXray
  Scenario: test GET
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
    And def token = response.replaceAll('"', '')

    Given url 'https://xray.cloud.getxray.app/api/v1/import/execution/cucumber'
    And header Content-Type = 'application/json'
    And header Authorization = 'Bearer ' + token
    And def execJson = read('file:target/surefire-reports/features.1_POEI2-878.json')
    And request execJson
    When method post
    Then status 200
    And print "\n\n\n\n" + response.key +  "\n\n\n"


