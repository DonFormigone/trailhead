public with sharing class cloneRecord {
public static void deepClone(){

    List<Case> lCase = [SELECT Id, CaseNumber, Priority  FROM Case WHERE ID = '5005Y00001vU6ScQAK'];
        System.debug('lCase: ' + lCase);
    List<Case> cloneListCase = new List<Case>();
    cloneListCase = lCase.deepClone();
    System.debug('cloneListCase:  ' + cloneListCase);
}
}