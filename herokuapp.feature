Feature: Listagem de usuarios
    Como usuario do sistema
    desejo listar todos os usuarios
    para ter informacoes dos de todos os cadastros
            
    Scenario: Listar os usuarios  
        * def payload =  {id: "c2acd0f3-8982-4e31-8a9a-918579be6fd6", name: "User name 1650249775568", email: "a6566deb-e08d-4629-b2a0-d82920e5ab06@t.com", createdat: "2022-04-18T02:42:57.214Z", updatedat: "2022-04-18T02:42:57.214Z"}
        Given url "https://crud-api-academy.herokuapp.com/api/v1"
        And  path "users"        
        When method get
        Then status 200
        And match response[*]id == "#[] #string"
        And match response[*]name == "#[] #string"
        And match response[*]email == "#[] #string"
        And match response[*]createdat == "#[] #string"
        And match response[*]updatedat == "#[] #string"



