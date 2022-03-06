public class AccountProcessor{
  @future
  public static void countContacts(Set<id> Id){
      List<Account> AccountList = [select id,Number_of_Contacts__c ,(select id from contacts )from account where id in :Id ];
      for( Account acc : AccountList ){
          List<Contact> ContactList = acc.contacts ;
          acc.Number_of_Contacts__c = ContactList.size();
      } 
      update AccountList;
  }
}