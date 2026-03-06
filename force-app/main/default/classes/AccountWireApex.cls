public with sharing class AccountWireApex {
    @AuraEnabled(cacheable=true)
    public static List <Account> getAccountList(Id accId){
        try {
            return [SELECT Id, Name, Phone FROM Account where Id=:accId];
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }
}