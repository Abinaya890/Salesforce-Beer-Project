({
	doInithandler : function(component, event, helper) {
        var pageref=component.get('v.pageReference');
        if(pageref){
           var state=pageref.state;
            component.set('v.Orderid',state.c__OrderId)
           // component.find("recordViewer").reloadRecord();
        }
	}
})