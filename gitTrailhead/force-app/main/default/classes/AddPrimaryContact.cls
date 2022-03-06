public with sharing class AddPrimaryContact implements Queueable{
    private Contact c;
    private String state;

    public AddPrimaryContact(Contact c, String state) {
        this.c = c;
        this.state = state;
    }
    public void execute(QueueableContext context){
        List<Account> accountList = [SELECT Id, Name,(SELECT Id, FirstName, LastName FROM Contacts) FROM Account WHERE BillingSTATE =: state LIMIT 200];
        List<Contact> contactList = new List<Contact>();
        for (Account acc : accountList) {
            Contact cont = c.clone(false, false, false, false);
            cont.AccountId = acc.Id;
            contactList.add(cont);

        }
        if (contactList.size()>0) {
            Database.insert(contactList);
        }
    }
}