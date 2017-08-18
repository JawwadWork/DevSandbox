public class CustomAccountList {
    
    public List<Account> aList {get; set;}
    public List<Contact> cList {get; set;}
    public List<Opportunity> oList {get; set;}
    public string aSearch {get; set;}
    public string aName {get; set;}
    
 public pagereference sAccount(){
  string aSrch = '%'+aSearch+'%';
  string aquery = 'Select id, Name, Phone, rating from Account where Name like :aSrch';
  aList = database.query(aquery);
  
  for (Account acc : aList){
      aName = acc.name;
  }
  
  string cquery = 'Select Accountid, lastname, firstname, phone, account.name, account.phone, email from Contact where account.name like : aName';
  string oquery = 'Select Accountid, Name, Account.name, Account.phone, Stagename, closedate from Opportunity where Account.name like :aName';
  cList = database.query(cquery);
  oList = database.query(oquery);
 
  return null;
 }
}
 // Use SOSL
       // String sqry = 'FIND \''+ aSrch +' *\' IN ALL FIELDS RETURNING Account(name,phone),Contact(lastname,firstname,EMAIL),Opportunity(name, closedate,stagename)';
          //string sqry = 'FIND \''+ aSrch +' *\' IN ALL FIELDS RETURNING Account (Id, Name, phone, rating, description), Contact(lastname, firstname,email, phone), Opportunity(stagename, name,closedate) ';
        //List<List<sObject>> sosllst= Search.query(sqry);
        
       // aList = sosllst[0];
       // cList = sosllst[1];
       // oList = sosllst[2];