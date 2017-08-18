@RestResource(urlMapping='/cContact/*')
global with sharing class ContactRESTFunction{
    
    @HttpDelete
    global static string dDelete(){
        RestRequest rReq = RestContext.request;
        String accId = rReq.requestURI.substring(rReq.requestURI.lastIndexOf('/')+1);
        Account a = [Select id from Account where Id = : accId];
        delete a;
        
        return 'Record has been Deleted';
    }
    
    @HttpGet
    global static Contact dGet(){
        RestRequest rReq = RestContext.request;
        String conId = rReq.requestURI.substring(rReq.requestURI.lastIndexOf('/')+1);
        Contact c = [Select id, firstname, lastname, MailingAddress, AccountId, Account.name,Account.rating,Account.billingcity,Account.billingcountry, Account.industry,Account.website from Contact where Id = : conId];
        return c;
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