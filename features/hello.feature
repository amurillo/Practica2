Feature:  usuario se registra
  In order to registrarse
  As a usuario
  I want registrarme

  Scenario: Pagina principal
    Given I am on the home page
    Then I should see "Home"
	
	
	Scenario: Registro Exitoso
    Given I am on the form
    When I fill in "name" with "Alejandro"
    And I fill in "email" with "amurillo@petroperu.com.pe"
	And I fill in "coment" with "aaaaaa"
    And I click "Registrate"
    Then I should see "Se registro el comentario"
	
	
	Scenario: Registro Fallido
    Given I am on the form
    When I fill in "name" with ""
    And I click "Registrate"
    Then I should see "Debe completar todos los datos"
	
	Scenario: Registro Fallido 2
    Given I am on the form
    When I fill in "email" with ""
    And I click "Registrate"
    Then I should see "Debe completar todos los datos"
	
	Scenario: Registro Fallido 3
    Given I am on the form
    When I fill in "coment" with ""
    And I click "Registrate"
    Then I should see "Debe completar todos los datos"
	
	
	Scenario: Registro Fallido 4
    Given I am on the form
    When I fill in "name" with ""
    And I fill in "email" with ""
	And I fill in "coment" with ""
    And I click "Registrate"
    Then I should see "Debe completar todos los datos"
	