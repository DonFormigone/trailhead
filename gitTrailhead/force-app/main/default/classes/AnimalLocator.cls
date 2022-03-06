public with sharing class AnimalLocator {
    public static String getAnimalNameById(Integer idAnimal) {
        String animalName;
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals/' + idAnimal);
        request.setMethod('GET');
        HttpResponse response = http.send(request);

        if (response.getStatusCode() == 200) {
            Map<String, Object> results = (Map<String, Object>) 
            JSON.deserializeUntyped(response.getBody());
            System.System.debug('Map results: ===> '+results);
            Map<String, Object> animal = (Map<String, Object>) results.get('animal');
            System.System.debug('Json do Animal Selecionado: ===> '+ animal);
            animalName = string.valueOf(animal.get('name'));
            System.debug('Nome do Animal: ===> '+ animalName);
        }
    return animalName;
    }
}