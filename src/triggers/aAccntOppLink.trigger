trigger aAccntOppLink on Account (Before insert) {
    
  //Before Insert is used to validate data before inserting a record in Database.
    Account a = Trigger.new[0];
	a.Rating = 'Warm';
    a.Industry = 'Banking';
    
  }