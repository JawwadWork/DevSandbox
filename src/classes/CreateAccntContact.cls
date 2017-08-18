public class CreateAccntContact {

    public string aName {get; set;}
    public string aPhone {get; set;}
    public string cLname {get; set;}
    public string cEmail {get; set;}
    public string oName {get; set;}
    public string oStage {get; set;}
    public date oCloseDate {get; set;}
    
    public pagereference aSave(){
        Account a = new Account ();
        a.name = aName;
        a.Phone = aPhone;
        insert a;
        pagereference pgr = new pagereference('/'+a.id);
        
        Contact c = new Contact();
        c.Lastname = cLname;
        c.Email = cEmail;
        c.AccountId = a.Id;
        insert c;
        
        Opportunity o = new Opportunity();
        o.name = oName;
        o.stagename = oStage;
        o.closeDate = oCloseDate + 45;
        o.Accountid = a.id;
        insert o;
        return pgr;
    }
  
}