@RestResource(urlMapping='/Account/*')
global with sharing class AccountManager {
    @HttpGet
    global static Account getAccount() {
        RestRequest request = RestContext.request;
        // grab the caseId from the end of the URL
        String accountId = request.requestURI.substring(
          request.requestURI.lastIndexOf('/')+1);
          Account result =  [SELECT Name, AccountNumber, Phone
                        FROM Account
                        WHERE Id = :accountId];
        return result;
    }
}