public with sharing class ContactController {
    private String sortByName = 'FirstName';
    @AuraEnabled
    public List<Contact> getContact(){
        List<Contact> data = Database.query('SELECT Id, FirstName, LastName FROM Contact ORDER BY '+ sortByName + ' LIMIT 10');
        return data;
    }
    public void sortByFirstName(){
        this.sortByName = 'FirstName';
    }
    public void sortByLastName(){
        this.sortByName = 'LastName';
    }
    
}