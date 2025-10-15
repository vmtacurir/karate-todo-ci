Feature: Karate Basic Todos API  
# Este Feature se enfoca en las operaciones básicas de la API TO-DO

Background:  
    # Esta URL base se aplica a todos los Scenarios debajo
    * url 'http://localhost:8080/api/todos'

Scenario: 1. Get all initial todos (Verifica que el servicio esté activo)
    # Usa la URL definida en Background
    When method get
    Then status 200

Scenario: 2. Basic todo flow (Crear un nuevo TODO)
    # Crea un TO-DO usando el endpoint definido en Background
    Given request {title: "Tarea 1", complete: false}
    When method post
    Then status 200
    # Opcional: Podemos validar el contenido de la respuesta
    And match response.title == 'Tarea 1'