Feature: Kandy responds to texts

  Scenario: Unknown user texts Kandy
    When cell number 666 texts Kandy
    Then Kandy should respond with "Bonjour! Je suis Kandy, l'assistant personnel des jeunes qui cherchent un job."

  Scenario: Charline texts Kandy
  	Given cell number 666 belongs to "Charline"
    When cell number 666 texts Kandy with "Salut!"
    Then Kandy should respond with "Bonjour Charline! Je n'ai pas compris. Dis moi 'CANDIDATURE xyz' pour répondre à une offre xyz."

  Scenario: Charline texts Kandy
  	Given cell number 666 belongs to "Charline"
    When cell number 666 texts Kandy with "CANDIDATURE 55777"
    Then Kandy should respond with "Bonjour Charline! Je n'ai pas trouvé d'offre avec le numéro 55777. C'est vraiment le bon?"

  Scenario: Charline texts Kandy
  	Given cell number 666 belongs to "Charline"
  	And a job ad 55777 posted by "Burker Ging Sète" is active
    When cell number 666 texts Kandy with "CANDIDATURE 55777"
    Then Kandy should respond with "Bonjour Charline! Je vais envoyer ton CV à Burker Ging Sète. Dis-moi STOP si ça ne va pas."