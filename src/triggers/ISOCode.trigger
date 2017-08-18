trigger ISOCode on Account (before insert) {
    
    List<Account> a = [Select id, billingcountry from account where id in :trigger.new];
    List<CountryCode__c> cc;

}