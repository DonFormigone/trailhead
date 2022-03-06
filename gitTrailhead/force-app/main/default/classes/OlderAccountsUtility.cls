public class OlderAccountsUtility {
    public static void updateOlderAccounts(){
        Account[] oldAccounts = [SELECT Id, Description from Account ORDER BY CreatedDate ASC LIMIT 5];
        for (Account acct : oldAccounts){
            acct.Description = 'Heritage Account';
        }
        update oldAccounts;
    }
}