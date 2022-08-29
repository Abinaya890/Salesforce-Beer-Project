public class Undeletedapex implements queueable {
    public void execute(Queueablecontext context){
        undelete[select name from lead where name like 'United%'  and isdeleted =true all rows];
        system.debug('undeleted');
    }

}