public class RandomContactFactory {
    public static List<Contact> generateRandomContacts (Integer numberOfContacts, String lastName)
    {
        // The 'generateRandomContacts' method must be capable of consistently generating contacts with unique first names.
        
        List < Contact > contacts = new List < Contact > () ;
        
        for ( Integer i = 0 ; i < numberOfContacts ; i++ ) 
        {
            Contact newCon = new Contact (LastName =lastName,  FirstName = lastName+i);
            contacts.add(newCon);
        }
        
        return contacts;

    }
}