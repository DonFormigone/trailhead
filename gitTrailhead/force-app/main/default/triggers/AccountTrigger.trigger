trigger AccountTrigger on Account (before insert, before update) {
    
    List<Contact> contactList = [SELECT Id, AccountId, Inactive_Account__c FROM Contact WHERE AccountId IN : Trigger.New];
    List<Contact> contact = new List<Contact>();

    for(Contact ctt : contactList){
        if(!ctt.Inactive_Account__c == true){
            ctt.Inactive_Account__c = true;
            contact.add(ctt);
        }else{
            ctt.Inactive_Account__c = false;
            contact.add(ctt);
        }
    }

    update contact;

}