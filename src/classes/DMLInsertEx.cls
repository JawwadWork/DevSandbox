public class DMLInsertEx {
    
    public void mymethod()
    {
   		List<Account> Accnt = new List<Account>();
        for (Integer i=1; i<100; i++){
            Account aAccnt = new Account();
        	aAccnt.Name = 'Jawwad'+i;
        	aAccnt.Phone = '613879043'+i;
        	aAccnt.Sic = '3536'+i;
            aAccnt.Rating ='Warm';
            Accnt.add(aAccnt); // Add account details in List
        }
        Insert Accnt;// once all the details added into the list then insert command to insert the whole list
    }
}