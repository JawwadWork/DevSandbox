public class DMLListDelete {
    public void mymethod(){
        
        List <Account> Accnt =[Select Name, phone, sic,rating, createddate from Account where Name like 'Jawwad%' OFFSET 3];
       
            DELETE Accnt;            
               
    }

}