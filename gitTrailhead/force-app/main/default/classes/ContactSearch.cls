public with sharing class ContactSearch {
   public static List<Contact> searchForContacts(String lastName, String postalCode){
        List<Contact> lContact = [SELECT Id, Name from CONTACT WHERE MailingPostalCode = :postalCode AND LastName = :lastName];
        
        return lContact;
    }
}