public class DMLUpdate {
    public void mymethod(){
        
        Account Accnt = [Select Name, Phone, createddate from Account where Name = 'Jawwad1'];
        Accnt.Rating = 'Hot';
        Update Accnt;        
    }

}