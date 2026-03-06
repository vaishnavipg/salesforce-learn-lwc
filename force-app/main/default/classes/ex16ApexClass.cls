public class ex16ApexClass {
    public static void getAccounts() {
		List<Account> accList = new List<Account>();

		accList.add(new Account(Name='Valid Account'));
		accList.add(new Account()); // Invalid record

		Database.SaveResult[] results = Database.insert(accList, false);

		for(Database.SaveResult sr : results){

		    if(sr.isSuccess()){
		        System.debug('Record inserted with Id: ' + sr.getId());
		    }
		    else{
 		       for(Database.Error err : sr.getErrors()){
	            System.debug('Error: ' + err.getMessage());
	        }
	    }
	}
	}
}