public class DMLListUpdate {
    public void mymethod(){
        
        List<Account> Accnt = [Select Name, phone, sic,rating, createddate from Account where Name like 'Jawwad%' OFFSET 5];
        
        for(Account aAccount:Accnt){
            aAccount.Rating = 'Cold';
            aAccount.Sic = '1234567';
            
        }
        update Accnt;
    }

}