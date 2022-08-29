({
	handleClick : function(component, event, helper) {
      //  alert("test");
		 component.find('ab').showCustomModal({
            header: "Application Confirmation",
            body: 'This is test', 
            footer:'Footer ',
            showCloseButton: true,
            closeCallback: function() {
                alert('You closed the alert!');
            }
        });
	}
})