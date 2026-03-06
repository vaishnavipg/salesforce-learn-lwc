public class QueueableExample1 implements Queueable {

    public void execute(QueueableContext context){
        List<Lead> records=[SELECT FirstName, LastName, Company, Status FROM LEAD];
        
        for(Lead record: records)
        {
            record.company='PICT';
        }
        
        update records;
        
        //We can call another Queueable class here
        QueueableExample2 obj2=new QueueableExample2();
        Id jobId = System.enqueueJob(obj2);
    }
}