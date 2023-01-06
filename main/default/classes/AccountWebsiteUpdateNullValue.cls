global class AccountWebsiteUpdateNullValue implements Database.Batchable<sObject> {

    global Database.QueryLocator start(Database.BatchableContext BC)
    {
        String query ='SELECT id,name,Website from account where Website =null';
        return Database.getQueryLocator(query);
    }
    
    global void execute(Database.BatchableContext BC,List<Account> accList)
    {
        for(Account acc:accList){
            if (String.isBlank(acc.Website)){
                acc.Website='www.dummyemail.com';
            }
        }
        update accList;
    }
   global void finish(Database.BatchableContext BC){
        System.debug('Inside Finish');
    }
    
}