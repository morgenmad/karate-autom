Feature: Tests API


  Scenario: test reponse Get OK

    Given url 'https://reqres.in/api/users?page=1'
    When method get
    Then status 200
    And print 'la réponse est : ', reponse
  Scenario: test GET
    Given url 'https://jsonplaceholder.typicode.com/posts/1'
    And method GET
    Then status 200
    And print response

  Scenario: test POST
    Given url 'https://jsonplaceholder.typicode.com/posts'
    And request
    """
    {
    title: 'foo',
    body: 'bar',
    userId: 1,
    }
    """
    When method POST
    Then status 201

  Scenario: test PUT
    Given url 'https://jsonplaceholder.typicode.com/posts/4'
    And request {title: 'Poei',body: 'Capgemini groupe',userId: 4,}
    And method PUT
    Then status 200
    And print response
