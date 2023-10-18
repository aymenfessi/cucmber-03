Feature: Test du webservice

  Scenario: Vérifier la réponse du webservice avec ba_id=261
    Given que j'appelle le webservice avec l'URL "https://biptag.fr/ws-unified/getforms.php?ba_id=261"
    Then la réponse doit contenir une structure JSON similaire à celle-ci :
"""
{
  "success": 1,
  "forms": [
    {
      "FORM_LABEL": "Test",
      "FORM_ID": 1821,
      "EV_NAME": "CIM",
      ...
    },
    {
      "FORM_LABEL": "FICHE CONTACT CIM2021",
      "FORM_ID": 1824,
      "EV_NAME": "CIM ",
      ...
    }
  ]
}
"""

