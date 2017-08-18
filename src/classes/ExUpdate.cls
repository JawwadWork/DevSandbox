public class ExUpdate {
    public void mymethod(){
        
        Account Accnt = [Select Id from Account where Name = 'A G Company'];
        String acc = Accnt.Id;
        List<Opportunity> Opp = [Select Id, Name from Opportunity where Name Like 'A G Company%'];
 
        for(Opportunity o : Opp){
            o.AccountId = acc; 
        }
       	
        Contact c = [Select Id from Contact where LastName = 'Carter'];
        c.AccountId = acc;
        
        Update Opp;
        Update c;
              
    }

}