public with sharing class questionAndResponseController {
    public static List<Question__c> getQuestionByContactId(String contactName){
        Contact ctt = [SELECT Id, Name FROM Contact WHERE Name = :contactName];
        System.debug('DEBUG ctt: ' + ctt);
        
        List<Question__c> questions = [SELECT Id, Name FROM Question__c WHERE ContactName__c =: ctt.Id];
        System.debug('DEBUG questions: ' + questions);
        
        List<Response__c> rList = [SELECT Id,Name,QuestionId__c from Response__c WHERE QuestionId__c = :questions[0].Id];
        System.debug('DEBUG response: ' + rList);
        return questions;
        
    }
}