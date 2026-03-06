public class ScheduleExample1 implements Schedulable {
	public void execute(SchedulableContext context){
        List<Lead> records=[SELECT FirstName, LastName, Company, Status FROM LEAD];
        
        for(Lead record: records)
        {
            record.company='PICT';
        }
        
        update records;
    }
}