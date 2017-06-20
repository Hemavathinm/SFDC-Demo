public class testClass{

public void testClass(){
System.debug('List of birthday user 111----->');

List<Contact> contactLst = new List<Contact>();
contactLst =[Select id,email from contact where Type__c ='AOWSR worksheet' limit 30];
set<String> strSet = new set<String>();
set<String> allSet = new set<String>();
for(Contact conObj : contactLst){
if(conObj.Birthdate == Date.Today()){
 strSet.add(conObj.Email);  
 }
else{
 allSet.add(conObj.Email);
} 
}

System.debug('List of birthday user----->'+ strSet);
System.debug('list of all user---->'+ allSet);


}

}