trigger AddRelatedRecord on Account (after insert, after update) {
	List<Opportunity> opptList = new List<Opportunity>();
    
    for (Account a : [SELECT Id, Name FROM Account WHERE Id IN :Trigger.New AND Id NOT IN (SELECT AccountId FROM Opportunity)]){
        opptList.add(new Opportunity(Name=a.Name + ' Opportunity',
                                    StageName = 'Prospect',
                                    CloseDate = System.today().addMonths(1),
                                    AccountId = a.Id));
    }
    if (opptList.size() > 0){
        insert opptList;
	}
}