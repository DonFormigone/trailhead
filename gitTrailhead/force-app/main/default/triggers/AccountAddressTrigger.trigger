trigger AccountAddressTrigger on Account (before insert, before update) {
    List<Account> acc = new List<Account>();

    for (Account acc : Trigger.New) {
        if ((acc.Match_Billing_Address__c == true) &&(acc.BillingPostalCode != NULL)) {
            acc.ShippingPostalCode = acc.BillingPostalCode;
        } 

    }
}