Feature: Criar usuario
    Como usuario do sistema
    desejo inserir novos usuarios no sistema
    para poder manipular estas informacoes

    Scenario: Inserir usuario
         Given url "https://crud-api-academy.herokuapp.com/api/v1"
         And  path "users" 
         And param user = {
             "name": "Joao stark",
             "email": "joao@example.com"
         }
         When method post
         Then status 201



    