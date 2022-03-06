global with sharing class CleaningInactiveAccountsBatch implements Database.Batchable<sObject>, Database.Stateful, Schedulable  {
    public Integer recordsProcessed = 0;   
    
    public void execute(SchedulableContext sc) {
        CleaningInactiveAccountsBatch batch = new CleaningInactiveAccountsBatch();
        database.executebatch(batch);
    }

    global Database.QueryLocator start(Database.BatchableContext BC) {
            // collect the batches of records or objects to be passed to execute
            String query = 'SELECT Id, (SELECT WhatId FROM TASKS WHERE IsClosed = true AND ACTIVITYDATE < LAST_90_DAYS), (SELECT ID FROM opportunities where StageName = \'Closed Won\' AND CloseDate < LAST_N_DAYS:120) from Account where Inativa__c = false';
            return Database.getQueryLocator(query);
        }
        
        global void execute(Database.BatchableContext BC, List<Account> accList) {
            // process each batch of records default size is 200
            
            for(Account acc : accList) {        
                // Update the Account Name 
                acc.Inativa__c = true;
                accList.add(acc);
            }
            try {
                // Update the Account Record
                update accList;
                System.debug('****** accList: ' + accList);
                recordsProcessed = recordsProcessed + 1; 
             
            } catch(Exception e) {
                System.debug(e);
            }
        }   
         
        global void finish(Database.BatchableContext bc) {
            // execute any post-processing operations like sending email
            System.debug(recordsProcessed);       
        }
    }