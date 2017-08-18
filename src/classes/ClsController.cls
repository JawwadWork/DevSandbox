public with sharing class ClsController {
  
  public List<Contact> contacts {get; set;}
  public ClsController()
      {
          contacts = [select id, name, email, phone,accountId from contact limit 10];
      }
    public void save()
    {
        update contacts;
    }

}