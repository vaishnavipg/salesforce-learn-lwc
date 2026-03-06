public class ex13ApexClass {
    
    public static List<Account> createAccount(integer noOfAccount){
         List<Account> accList = new List<Account>();
        for(Integer i = 1; i <= noOfAccount; i++){
            accList.add(new Account(
                Name = 'Test Account ' + i           
            ));
        }
        insert accList;
        return accList;

    }

}