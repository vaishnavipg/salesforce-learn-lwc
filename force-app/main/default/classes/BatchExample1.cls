public class BatchExample1 implements Database.Batchable<SObject> {
	
    public Database.QueryLocator start(Database.BatchableContext BC){
        return Database.getQueryLocator('SELECT FirstName, LastName, Company, Status FROM LEAD');
    }

    public void execute(Database.BatchableContext BC, List<Lead> scope){
        System.debug('In execute method');
        
        for(Lead record: scope)
        {
            record.company='PICT';
        }
        
        update scope;
    }

    public void finish(Database.BatchableContext BC){
        System.debug('Batch finished');
    }
    
}