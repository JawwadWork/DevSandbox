@RestResource(urlMapping='/aAccount/*')
global with sharing class myRESTFunction{
    
    @HttpDelete
    global static string dDelete(){
        RestRequest rReq = RestContext.request;
        String accId = rReq.requestURI.substring(rReq.requestURI.lastIndexOf('/')+1);
        Account a = [Select id from Account where Id = : accId];
        delete a;
        
        return 'Record has been Deleted';
    }
    
    @HttpGet
    global static Account dGet(){
        RestRequest rReq = RestContext.request;
        String accId = rReq.requestURI.substring(rReq.requestURI.lastIndexOf('/')+1);
        Account a = [Select id, name, phone,website,rating,billingcity from Account where Id = : accId];
        return a;
    }
    
    @HttpPost
    Global static string dPost(String aName,String aPhone,String aWebsite,String cLastName, String cFirstName, String oName, String oLeadSource, String oStage){
        Account a = new Account();
        a.Name = aName;
        a.Phone = aPhone;
        a.Website = aWebsite;
        insert a;
        
        Account acc = [Select Id from Account where Id = : a.Id];
        Contact c = new Contact();
        c.LastName = cLastName;
        c.FirstName = cFirstName;
        c.AccountId = acc.Id;
        insert c;
     
        Return 'Success';
    }
    
}