public with sharing class AccountServiceClass {   
    public static void renameAccount(){
        Integer i=0;
        Account newAccount;
        List<Account> updateAccountList= new List<Account>();
        for(Account acc :[Select id,Name from Account WITH SECURITY_ENFORCED limit 5]){
            if(acc.Name.contains('acc')){
                newAccount= new Account(id=acc.Id,Name=acc.Name+'sovrn'+i);
                updateAccountList.add(newAccount);
            }
        }
        Database.update(updateAccountList, true);
    }
}