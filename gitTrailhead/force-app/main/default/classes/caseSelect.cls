public with sharing class caseSelect {

    public static List<Case> selectByAccountId(String accountId){
        List<Case> caseList = [SELECT Id, CaseNumber, Priority, Status, Type FROM Case WHERE accountId = :accountId ];
        return caseList;
    }
}