@isTest
public class ex12ApexClassTest {
    
    @TestSetup
    static void setupTestData() {
		
        /*
        List<Account> accList = new List<Account>();

        for(Integer i = 1; i <= 10; i++){
            accList.add(new Account(
                Name = 'Test Account ' + i,
                Industry = 'IT'
            ));
        }

       // insert accList;
       // 
       */
        List<Contact> conList = new List<Contact>();

        for(Integer i = 1; i <= 10; i++){
            conList.add(new Contact(
                LastName = 'Test Contact ' + i
            ));
        }

        insert conList;
    }
    
    
    static void testGetAccounts(){

        Test.startTest();
        List<Account> accounts = ex12ApexClass.getAccounts();
        Test.stopTest();

        System.assert(accounts.size() > 0, 'Accounts should be returned');
    }
    
    @isTest
    static void testGetContact(){

        Test.startTest();
        List<Contact> Contact = ex12ApexClass.getContacts();
        Test.stopTest();

        System.assert(Contact.size() > 0, 'Contact should be returned');
    }

}