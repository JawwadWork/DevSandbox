trigger InsertOpportunity on Account (before insert) {
    Account acc =trigger.New[0];
    
    Opportunity opp = New Opportunity();
    opp.name = acc.name+'-opp';
    opp.stagename = 'Prospecting';
    opp.CloseDate=system.today()+45;
    insert opp;   
}