trigger accounttrigger on Account (before insert,before update) {
 account ab = trigger.new[0];
    ab.type = 'prospect';
    ab.industry = 'agriculture';
    
    system.debug('trigger.new[0]='+ trigger.new[0]);
    ab.phone ='91' + ab.phone;
}