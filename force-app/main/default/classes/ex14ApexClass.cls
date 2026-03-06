public class ex14ApexClass {
    Public static List<Contact> createContact (integer noOfContact){
        List<Contact> conList = new List<Contact>();
        for(integer i=1; i <= noOfContact ;i++ ){
            Contact con= new Contact();
            con.LastName='Test Name'+i;
            conList.add(con);
         }
        insert conList;
        return conList;
}

}