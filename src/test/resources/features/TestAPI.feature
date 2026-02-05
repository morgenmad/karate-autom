Feature: Tests API



Scenario: test GET
Given url 'https://jsonplaceholder.typicode.com/posts/1'
And method GET
Then status 200
And print response