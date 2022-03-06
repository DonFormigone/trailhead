public with sharing class ValidateCPFCNPJ {
    public static void verifyChangeAccount(){
        List<Account> accList = trigger.New;
        Map<Id, Account> mapAccount = (Map<Id, Account>)trigger.OldMap;
        System.debug('Deug Map Account *******');
        System.debug(mapAccount);
        for (Account acc : (List<Account>)trigger.new) {
            System.debug('Se parou aqui, não entrou no for');
            if((mapAccount != NULL) &&
                (acc.AccountNumber != mapAccount.get(acc.Id).AccountNumber) || (acc.Name != mapAccount.get(acc.Id).Name) || (acc.Type != mapAccount.get(acc.Id).Type)){
                if(trigger.isBefore){
                    System.debug('Passando pelo If Before');
                    documentValidate();   
                }
                if(trigger.isAfter){
                    System.debug('Passando pelo If After');
                    updateDocuments(acc);
                } 
            }
        }
    }
    public static void documentValidate() {
        System.debug('Passando pelo metodo documentValidate');
        for (Account acc : (List<Account>) trigger.New) {
            System.debug('Entrando no for List Account document Validate');
			System.debug('Account Number:  '+ acc.AccountNumber );
            if ((!Utils.validaCNPJ(acc.AccountNumber)) || (!Utils.validaCPF(acc.AccountNumber))) {
                acc.AddError('Número do cliente é inválido');
                System.debug(acc.AccountNumber + ' Número do cliente é inválido');
            }   
        }
    }

    public static void updateDocuments(Account acc){
        System.debug('Passando pelo Metodo updateDocuments');
        //Instanciando List dos objetos 
        List<Opportunity> oppList = new List<Opportunity>();
        List<Task> taskList = new List<Task>();
        
        //Adicionando 30 dias a frente da data corrente.    
        Date myDate = Date.today();
        Date newDate = mydate.addDays(30);
        
        // for (Account acc : (List<Account>) trigger.New) {
            System.debug('Entrando no for de updateDocuments');
            if (acc.Type == 'Parceiro') {
                System.debug('Entrando no if parceiro');
                oppList.add(new Opportunity(Name = acc.Name + ' - opp Parceiro', CloseDate = newDate, AccountId = acc.Id, StageName = 'Qualification'));
            }else if(acc.Type == 'Consumidor Final') {
                System.debug('Entrando no if Consumidor final');
                taskList.add(new Task(Subject = 'Consumidor Final', WhatId = acc.Id, Status = 'Não Iniciada', Priority = 'Normal'));
            }   
        // } 
        if (!oppList.isEmpty()) {
            System.debug('Inserindo Opportunity');
            Database.insert(oppList);
        } 
        if (!taskList.isEmpty()){
            System.debug('Inserindo Task');
            Database.insert(taskList);
        }
    }
}