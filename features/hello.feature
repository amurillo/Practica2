Feature:  usuario se registra
  In order to registrarse
  As a usuario
  I want registrarme

  Scenario: Pagina principal
    Given I am on the home page
    Then I should see "Home"
	
	
	Scenario: Registro Exitoso
    Given I am on "/form"
    When I fill in "name" with "Alejandro"
    And I fill in "email" with "amurillo@petroperu.com.pe"
	And I fill in "coment" with "aaaaaa"
    And I click "Registrate"
    Then I should see "Se registro el comentario"