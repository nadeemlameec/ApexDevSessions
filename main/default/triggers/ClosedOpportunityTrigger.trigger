trigger ClosedOpportunityTrigger on Opportunity (after insert,after update) {
    List<Task> ClosedOpportunity = new List<task> ();
    switch on Trigger.operationType{
        
        when AFTER_INSERT  {
            for (Opportunity Opportunityrecords:trigger.new){

                    
                
                if(Opportunityrecords.StageName == 'Closed Won')
                {
                    ClosedOpportunity.add(new Task(Subject = 'Follow Up Test Task', WhatId = Opportunityrecords.Id));
                }               
                
                
            }

               
            }
    
        when AFTER_UPDATE  {
        for (Opportunity Opportunityrecords:trigger.new){

            List<Task> ClosedOpportunity = new List<task> ();    
        
         if(Opportunityrecords.StageName == 'Closed Won' && Opportunityrecords.StageName != Trigger.oldMap.get(Opportunityrecords.Id).StageName)
            {
            ClosedOpportunity.add(new Task(Subject = 'Follow Up Test Task', WhatId = Opportunityrecords.Id));
            }               
        
         }
         }   
    }
    insert ClosedOpportunity;   

}


