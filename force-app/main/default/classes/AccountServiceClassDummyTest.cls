@isTest
public with sharing class AccountServiceClassDummyTest {
    @TestSetup
    static void makeData(){
        Account a1= new Account(Name='accTest Account 1');
        Account a2= new Account(Name='Test Account 2');
        Account a3= new Account(Name='Test account 3');
        Account a4= new Account(Name='Test account 4');
        List<Account> accList= new List<Account>();
        accList.add(a1);
        accList.add(a2);
        accList.add(a3);
        accList.add(a4);        
        insert accList;    
    }
    static testMethod void TestAccName() {
        AccountServiceClass.renameAccount();        
    }
}