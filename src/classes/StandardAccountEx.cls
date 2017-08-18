public class StandardAccountEx {

    public boolean billingInfo {get;set;}
    public string abil {get; set;}
    
    public List<CountryCode__c> ccList {get; set;}
    Account a;
         
    public StandardAccountEx(ApexPages.StandardController controller) {
     a = (Account)controller.getRecord();
     billingInfo = false;
    }
 
  public pagereference cSIC(){
   string aSrch = a.billingcountry;
   string aquery = 'Select name, Code__c from CountryCode__c where name = :aSrch';
   
   ccList = database.query(aquery);
   
     for (CountryCode__c cCC : ccList){
         a.sic = cCC.Code__c;
     }
   return null;
 
  }    
          
}