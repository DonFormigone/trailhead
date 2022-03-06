public with sharing class Utils {
    public static Boolean validaCPF(String accountNumber) {
        if(accountNumber != NULL){
             return true;
        } else {
            return false;
        }
       
    }
    public static Boolean validaCNPJ(String accountNumber) {
       if(accountNumber != NULL){
             return true;
        } else {
            return false;
        }
       
   }
}