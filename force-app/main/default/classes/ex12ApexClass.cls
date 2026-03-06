public with sharing class ex12ApexClass {
     public static List<Account> getAccounts() {
        return [SELECT Id, Name, Industry FROM Account LIMIT 10];
    }
    
    public static List<Contact> getContacts(){
        return [SELECT Id, Name FROM Contact LIMIT 10];
    }
    
    
}