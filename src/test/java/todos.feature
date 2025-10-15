Feature: Karate Basic Todos API  

Background:  
    * url 'http://localhost:8080/api/todos'
Scenario: get all todos
    Given url 'http://localhost:8080/api/todos'
    When method get
    Then status 200
    Scenario: Basic todo flow
    #Create a single todo
    Given request {title: "First", complete: false}
    When method post
    Then status 200