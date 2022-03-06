public class AccountHandler {
    
    //challenger Manipulate Records with DML
    public static Account insertNewAccount(String name){
         
        try {
            Account lAccount = new Account();
            lAccount.Name = name;
            lAccount.AccountNumber = 'A0000333';
            Database.insert(lAccount);
            return lAccount;
        } catch (DMLException e ) {
            return null;
        }
    }
    
    public static void insertAccount(Integer value){
        Integer counter = 1;
        List<Account> addAccounts = new List<Account>();
        while(counter <= value){
            Account store = new Account();
            store.Name          = 'Acme Inc ' + counter;
            store.AccountNumber = 'A000012' + counter;
            addAccounts.add(store);
            counter++;
        }
        //Inserir todos os elementos no BD.
        insert addAccounts;
    }
  /*  public static void CreateNewOpportunity(List<Account> accts) {
        List<Opportunity> opps = new List<Opportunity>();
        for (Account a : accts) {
            Opportunity opp = new Opportunity();
            opp.Name = a.Name + ' Opportunity';
            opp.AccountId = a.Id;
            opp.StageName = 'Prospecting';
            opp.CloseDate = System.Today().addMonths(1);
            opp.Percentual_de_desconto__c = 10;
            opps.add(opp);
        }
        if (opps.size() > 0) {
            insert opps;
        }
    }*/
}