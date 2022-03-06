public with sharing class component01Controller {
   @AuraEnabled
    public static String salvarApex(String nome){
       System.debug('Nome:  ' + nome);
       return 'Seja Criativo';
    }
}