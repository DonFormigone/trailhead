public with sharing class ContactAndLeadSearch {
    public static List<List<SObject>> searchContactsAndLeads(String lastName){
       
        List<List<SObject>> contactLeadList = [FIND :lastName IN ALL FIELDS RETURNING Contact(Name), Lead(Name)]; 
       return contactLeadList;
       
       
        /* List<List<sObject>> searchList = [FIND :serchText IN ALL FIELDS 
                   RETURNING 
                   Contact(FirstName,LastName),
                   Lead(FirstName, LastName)];
            Contact[] searchContacts = (Contact[])searchList[0];
            Lead[] searchLeads = (Lead[])searchList[1];
        System.debug('Found the following contacts.');
        for (Contact c : searchContacts) {
            System.debug(c.Name);
        }
        System.debug('Found the following Leads.');
        for (Lead l : searchLeads) {
            System.debug(l.LastName + ', ' + l.FirstName);
        }
        return searchList;*/
    }
}