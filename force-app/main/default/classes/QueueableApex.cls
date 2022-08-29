public class QueueableApex implements queueable {
    public void execute(Queueablecontext context){
        delete[select name from lead where name like 'United%' limit 2];
        system.debug('deleted');
        system.enqueueJob(new Undeletedapex());
    }

}