public class DMLDelete {
    
    public void mymethod(){
        Account Accnt = [Select Name, phone from Account where Name = 'Jawwad4'];
        Delete Accnt;       
        
    }

}