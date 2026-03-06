public class QueueableExample2 implements Queueable {
	public void execute(QueueableContext context){
        List<Lead> records=[SELECT FirstName, LastName, Company, Status FROM LEAD];
        
        for(Lead record: records)
        {
            record.company='PICT-new';
        }
        
        update records;  
    }
}