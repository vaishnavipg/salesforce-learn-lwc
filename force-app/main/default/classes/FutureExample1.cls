public class FutureExample1 {
    @future
public static void updateRecords()
{
    list<lead> records=[SELECT Id, LastName, FirstName, Company, Status FROM Lead];
    for(lead record:records)
    {
        record.company='Wipro';
    }
    update records;
}
    public void insertRecords()
    {
        Lead record1=new lead(FirstName='Vaishnavi', lastName='Ganesan',Company='Infosys',Status='Open-Not Available');
        insert record1;
    }
}