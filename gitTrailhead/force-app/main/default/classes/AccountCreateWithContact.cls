public with sharing class AccountCreateWithContact {
    public static List<Account> createAccount(Integer qtdAccount){
        List<Account> lstAccount = new List<Account>();
        for(Integer i = 0; i<2; i++){
        	Account account = new Account();
            account.Name = 'Test ' + i;
            account.Type = 'Customer - Channel';
            account.AccountNumber = 'LC97822' + i;
            System.debug(account);
            lstAccount.add(account);
        }
        Database.insert(lstAccount);
        return lstAccount;
    }

    public static void createContact(){
 
    List<Contact> listContact = new List<Contact>();

        for(Integer i = 0; i<3; i++){
                Contact contact = new Contact();
                contact.FirstName = 'Luis';
                contact.LastName = 'Test';
                contact.AccountId = '0015Y00002mUFl2QAG';
                contact.Phone = '2126862686';
                contact.MobilePhone = '21979579755';
                System.debug(contact);
                listContact.add(contact);
            }
    Database.insert(listContact);

         
    }
}