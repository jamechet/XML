trigger ClosedOpportunityTrigger on Opportunity (after insert, after update) {
    List<Task> tas = new List<Task>();
   
    for (Opportunity oppt : [SELECT Id, StageName FROM Opportunity WHERE Id IN :Trigger.New]){
        if (oppt.StageName == 'Closed Won'){
            
            tas.add(new Task(WhatId = oppt.Id,
                             Subject = 'Follow Up Test Task'));
        }
    }
    if (tas.size() > 0){
        insert tas;
    }
    
}