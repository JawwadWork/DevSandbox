trigger AllContactEvents on Contact (before insert,before update, before delete, after update, after insert, after delete, after undelete) 
{
    if (trigger.Isbefore)   
    {
        If (trigger.IsInsert)
        {
            
        }
        else if (trigger.IsUpdate)
        {
            For(Contact c : Trigger.New){
        
            //String oldEmail = trigger.oldMap.get(c.Id).Email; // Grab the old value in Map using key as contact id
            Contact oldC = trigger.old[0];
           
            String newEmail = c.Email;
        
            //Compare new email value to old value
            If (newEmail != oldC.Email){
               c.Email.addError('You are not allowed to change the email address for this Contact ');        
            }  
        
    }

        }
        else 
        {
            //before delete
            
            
        }
    }
    else 
    {
        If (trigger.IsInsert)
        {
                       
        }
        else if (trigger.IsUpdate)
        {
            //After Update
            //Contact c = Trigger.new[0];
            //  Account a = [Select Id, Phone from Account where Id = :c.AccountId];
            //  a.Phone = c.Phone;
            //Update a;
        }
        else if (trigger.Isdelete)
        {
           
        }
        else 
        {
            // After undelete
           
        }
    }

}