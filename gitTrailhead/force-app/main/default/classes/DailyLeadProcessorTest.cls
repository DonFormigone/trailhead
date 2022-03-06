@isTest
public with sharing class DailyLeadProcessorTest {
    @isTest
   public static void testSchedulableClass(){
       List<Lead> leadList = new List<Lead>();
       for (Integer i=0; i<500; i++) {
           if(i < 250){
                leadList.add(new Lead(LastName='Padilha', Company ='Salesforce'));
           } else{
                leadList.add(new Lead (LastName='Padilha', Company='Salesforce', LeadSource='Other'));
           }
           insert leadList;
       }
   }
}