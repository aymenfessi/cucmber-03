Feature: Test du webservice

  Scenario: Vérifier la réponse du webservice avec ba_id=261
    Given que j'appelle le webservice avec l'URL "https://biptag.fr/ws-unified/getforms.php?ba__id=994"
    Then la clé "success" de la réponse doit être égale à 0


  Scenario: Vérifier la réponse du webservice avec ba_id=261
    Given que j'appelle le webservice avec l'URL "https://biptag.fr/ws-unified/getforms.php?ba_id=994"
    Then la clé "success" de la réponse doit être égale à 1
