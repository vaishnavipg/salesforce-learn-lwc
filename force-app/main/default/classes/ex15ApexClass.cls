public class ex15ApexClass {
    Public static List<Opportunity> createOpportunity(integer noOfOpp){
        List<Opportunity> oppList = new List<Opportunity>();
            for(integer i=1; i<=noOfOpp; i++){
               Opportunity opp= new Opportunity();
                opp.name='Opportunity Name'+i;
                oppList.add(opp);
            }
        	Database.insert(oppList,false);
       		 return oppList;
    }

}