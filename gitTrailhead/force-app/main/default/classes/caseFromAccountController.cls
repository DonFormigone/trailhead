public with sharing class caseFromAccountController {
    @AuraEnabled(cacheable=true)
    public static List<Case> getCaseByAccountId(String accountId){
        List<Case> caseList = [SELECT Id, CaseNumber, AccountId FROM Case WHERE AccountId = : accountId];
        System.debug('DEBUG Case: '+ caseList);
    return caseList;
    }
}