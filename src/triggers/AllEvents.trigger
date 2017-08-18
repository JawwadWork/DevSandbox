trigger AllEvents on Account (before insert,before update, before delete, after update, after insert, after delete, after undelete) 
{
    if (trigger.Isbefore)   
    {
        If (trigger.IsInsert)
        {
            
        }
        else if (trigger.IsUpdate)
        {
            
        }
        else 
        {
          	//before delete
          	Account a =Trigger.old[0];
    		If (a.SLA__c == 'Gold'){
        		a.addError('You are not allowed to delete SLA-Gold account ');
   		    } 
            
        }
    }
    else 
    {
        If (trigger.IsInsert)
        {
			List<Opportunity> oList = new List<Opportunity>();
            List<Contact> cList = new List<Contact>();
            
            for(Account a : trigger.new){
                Opportunity Opp = new Opportunity();
                Opp.name = a.Name+'Test';
                Opp.CloseDate = system.today()+30;
                Opp.StageName = 'Prospecting';
                Opp.AccountId = a.Id;
                oList.add(Opp);
                
                Contact c = new Contact();
                c.FirstName = 'Bill';
                c.LastName = 'Clinton';
                c.Salutation = 'Dr.';
                c.AccountId = a.Id;
                cList.add(c);
            }
            Insert oList;
            Insert cList;
        }
       else if (trigger.IsUpdate)
        {
			//Account a = trigger.new[0];
            //List<Contact> cC = [Select Id,Accountid, phone from Contact where AccountId = :a.Id ];
            List<Contact> conList = [Select Id, AccountId, Phone, Account.Phone From Contact where AccountId in : Trigger.NewMap.keySet()];
            
            for(Contact c : conList){
            	c.phone = c.Account.phone;
            }
				update conList;            
        }
        else if (trigger.Isdelete)
        {
            Account a = trigger.old[0];
            AccntBackup__c ab = new AccntBackup__c();
    		ab.Name = a.Name;
    		ab.Phone__c = a.Phone;
       		Insert ab;
        }
        else 
        {
            // After undelete
            List<Account> a = [Select Id, Description from Account where id in : trigger.new];
    
    		For(Account acc : a){
    			acc.Description = 'This account was deleted on '+system.today();    
    		}
    		Update a;
        }
    }

}