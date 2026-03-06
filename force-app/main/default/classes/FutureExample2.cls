public class FutureExample2 {
        @future
public static void updateRecords(set<ID>recordsID)
{
    list<lead> records=[SELECT Id, LastName, FirstName, Company, Status FROM Lead where Id IN:recordsId];
    for(lead record:records)
    {
        record.company='Salesforce';
    }
    update records;
}
    public static void insertRecords()
    {
        Lead record1=new lead(FirstName='Paranthaman', lastName='Ganapathy',Company='Infosys',Status='Open-Not Available');
        insert record1;
    }


}