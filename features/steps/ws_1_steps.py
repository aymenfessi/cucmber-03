from behave import given, then
import requests
import json

class WebserviceResponse:
    def __init__(self, success, forms):
        self.success = success
        self.forms = forms

class Form:
    def __init__(self, form_label, form_id, ev_name, ev_edition, form_structure):
        self.form_label = form_label
        self.form_id = form_id
        self.ev_name = ev_name
        self.ev_edition = ev_edition
        self.form_structure = form_structure

@given('que j\'appelle le webservice avec l\'URL "{url}"')
def step_given_call_webservice(context, url):
    context.response = requests.get(url)
    context.response_data = json.loads(context.response.text)

@then('la clé "{key}" de la réponse doit être égale à {value}')
def step_then_response_key_should_equal(context, key, value):
    response_data = context.response_data
    assert key in response_data, f"La clé '{key}' est manquante dans la réponse JSON."
    assert response_data[key] == int(value), f"La valeur de la clé '{key}' n'est pas égale à {value}."
