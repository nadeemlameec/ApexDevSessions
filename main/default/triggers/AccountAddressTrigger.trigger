trigger AccountAddressTrigger on Account (before insert,before update) {

    switch on Trigger.operationType{
        
        when BEFORE_INSERT {
         for (Account Accountrecords:trigger.new){
           if (Accountrecords.Match_Billing_Address__c == True && Accountrecords.BillingPostalCode!=null)
           {
            Accountrecords.ShippingPostalCode=Accountrecords.BillingPostalCode;
           }               
           }   
        }
   
           
       when BEFORE_UPDATE{  
        for (Account Accountrecords:trigger.new){
            if (Accountrecords.Match_Billing_Address__c == True && Accountrecords.BillingPostalCode!=null)
            {
             Accountrecords.ShippingPostalCode=Accountrecords.BillingPostalCode;
            }               
            }   
           
     } 

}
}