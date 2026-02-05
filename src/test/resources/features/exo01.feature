Feature: Test API REST simple


Scenario: test GET ex01
Given url 'https://jsonplaceholder.typicode.com/posts/1'
And method GET
Then status 200