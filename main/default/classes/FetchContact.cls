public with sharing class FetchContact {
@AuraEnabled(cacheable=true)
    public static List<Contact> getContactList(){
        return [SELECT Id,Name FROM Contact LIMIT 10];
    }
}