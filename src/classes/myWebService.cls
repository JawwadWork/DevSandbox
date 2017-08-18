Global class myWebService {
    
    webservice static Id mAccount(){
    	String aName;
        String aPhone;
        Account a = new Account();
        a.Name = aName;
        a.Phone = aPhone;
        insert a;     
        
        return a.Id;        
    }

}