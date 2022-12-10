trigger Active on Contact (after insert, after update, after delete, after undelete) {

switch on Trigger.operationType{
    when AFTER_INSERT {
        for(Contact con:Trigger.new){
            if (String.isNotBlank(con.AccountId)) {
                //write automation logic
                String accountId= con.AccountId;
                List<AggregateResult> results = [SELECT AccountId ,COUNT(id) totalContacts FROM Contact WHERE active__c =true AND Accountid=:accountId GROUP BY Accountid];

            
              for(AggregateResult result:results){

                String accID =String.valueOf(result.get('AccountId'));
                Integer totalContacts =Integer.valueOf(result.get('totalContacts'));

                Account acc = new account(id=accId,Active_Contact__c=totalContacts);
                update acc;
              }

            
            }
        }
        
    }
   
}

}

