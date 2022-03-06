public class RandomContactFactory {
   public static List<Contact> generateRandomContacts(Integer numOfContacts, String lastName){
        List<Contact> contacts = new List<Contact>();
        for (Integer i=0; i<numOfContacts; i++) {
            Contact c = new Contact(FirstName='Test ' + i, Lastname=Lastname);
            contacts.add(c);            
        }
       System.debug(contacts);
        return contacts;
    }   
}