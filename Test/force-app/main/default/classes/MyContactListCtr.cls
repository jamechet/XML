/**
@author :
@company :
@description :
 */
public with sharing class MyContactListCtr {
    @AuraEnabled
    /**
    @author :
    @company :
    @description :
    @return contactList
     */
    public static List<Contact> getContacts() {
        List<Contact> contactList = new List<Contact>();
        String query = 'SELECT FirstName FROM Contact';
        contactList = Database.query(query);
        return contactList;
    }
}