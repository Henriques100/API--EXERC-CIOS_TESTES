Feature: Testando API Yu-gy-Oh

Scenario: Testando retorno people/1/
    Given url "https://pokeapi.co/"
    When method get
    Then status 200

Scenario: Testando existencia pokemons
    Given url "https://pokeapi.co/api/v2/pokemon/ditto"
    When method get
    Then match response.forms[0].name == "ditto"

Scenario: Testando existencia pokemons
    Given url "https://pokeapi.co/api/v2/ability/10"
    When method get
    Then match response.effect_changes[0].version_group.name == "diamond-pearl"   

Scenario: Testando existencia pokemons
    Given url "https://pokeapi.co/api/v2/ability/999"
    When method get
    Then match response == "Not Found"

Scenario: Testando existencia pokemons
    Given url "https://pokeapi.co/api/v2/language/9"
    When method get
    Then match response.names[1].language.name == "ko"

Scenario: Testando existencia pokemons
    Given url "https://pokeapi.co/api/v2/item/9"
    When method get
    Then match response.category.name == "special-balls"  
    
Scenario: Testando existencia pokemons
    Given url "https://pokeapi.co/api/v2/item-category/800"
    When method get
    Then match response == "Not Found"    

