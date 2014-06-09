public class whack_a_xxxController {
    public String getEnemyURL() {
        string retStr = 'https://ap.salesforce.com/img/seasonLogos/2014_spring_aloha.png';
        User myInfo = [SELECT Id, ManagerId FROM User where Id =: UserInfo.getUserId()];
        if(myInfo.ManagerId != null){
            User myBoss = [select Id, SmallPhotoUrl from User where id =: myInfo.ManagerId];
            if(myBoss.SmallPhotoUrl != null){
                retStr = myBoss.SmallPhotoUrl;
            }
        }
        return retStr;
    }
}