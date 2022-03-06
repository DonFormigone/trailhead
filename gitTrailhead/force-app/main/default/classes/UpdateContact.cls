public with sharing class UpdateContact {
    public static void selectContact(String contactId){
        Contact lContact = ContactDAO.getContactById(contactId);
        System.debug('Select Contato: ' + lContact);
        Contact lContact2 = ContactDAO.getContactById('0035Y00003zvAVqQAM');
        System.debug('Select Contato: ' + lContact2);
    }

    
    // public static void contactUpdate(String contactId){
    //       lContact.Phone = '2126862686' + 1;
    //         update lContact;
    //       System.debug('Novo valor do contato: ' + lContact);

    // } 
}