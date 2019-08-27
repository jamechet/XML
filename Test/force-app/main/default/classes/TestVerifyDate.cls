@isTest
public class TestVerifyDate {
    @isTest static void testCheckDateWithin30Days1() {
       Date date1 = Date.newInstance(2019, 05, 01);
       Date date2 = Date.newInstance(2019, 05, 20);
       Date actual = VerifyDate.CheckDates(date1, date2);
       System.assertEquals(date2, actual);
   }
   @isTest static void testCheckDateWithin30Days() {
       Date date1 = Date.newInstance(2019, 05, 01);
       Date date2 = Date.newInstance(2019, 05, 31);
       Date actual = VerifyDate.CheckDates(date1, date2);
       System.assertEquals(date2, actual);
   }
   @isTest static void testCheckDateEndOfTheMonth() { 
       Date date1 = Date.newInstance(2019, 05, 01);
       Date date2 = Date.newInstance(2019, 07, 05);
       Date actual = VerifyDate.CheckDates(date1, date2);
       Date expect = date.newInstance(2019, 05, 31);
       System.assertEquals(expect, actual);
   
   }
   @isTest static void testDateWithin30DaysReturnTrue() {
       Date date1 = Date.newInstance(2019, 07, 01);
       Date date2 = Date.newInstance(2019, 05, 01);
       Boolean actual = VerifyDate.DateWithin30Days(date1, date2);
       System.assertEquals(false, actual); 
   }
   @isTest static void testDateWithin30DaysReturnFalse(){
       Date date1 = Date.newInstance(2019, 05, 01);
       Date date2 = Date.newInstance(2019, 07, 01);
       Boolean actual = VerifyDate.DateWithin30Days(date1, date2);
       System.assertEquals(false, actual);

   }
   @isTest static void testDateWithin30DaysReturnFalseWithEqual(){
       Date date1 = date.newInstance(2019, 05, 01);
       Date date2 = date.newInstance(2019, 05, 01);
       Date expectDay = date2.addDays(30);
       boolean actual = VerifyDate.DateWithin30Days(date1, date2);
       System.assertEquals(true, actual);

   }
   @isTest static void testSetEndOfMonthDate(){
       Date lastDate = date.newInstance(2019, 05, 31);
       Date todayDate = date.newInstance(2019, 05, 05);
       System.assertEquals(lastDate, VerifyDate.SetEndOfMonthDate(todayDate));
        
   }
}