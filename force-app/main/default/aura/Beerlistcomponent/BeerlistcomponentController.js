({
	handleClick : function(component, event, helper) {
		var eventrecord = event.getSource();
        var beerid = eventrecord.get("v.name");
     //   alert(beerid);
 
                component.set('v.beerrecordid',beerid);
        //createComponent(String type, Object attributes, function callback)
        // <!--<c:BeerDetailComponent recordid="{!v.beerrecordid}" ></c:BeerDetailComponent> -->
	$A.createComponent
    (
        "c:BeerDetailComponent",{
            "recordid":beerid
        },
        function(beerDetails, status, errorMessage)
        {
            if(status =="SUCCESS"){
               //  alert('start')
                component.find("ab").showCustomModal({
                    header: "Beer Detail",
                    body: beerDetails,
                    
                    footer:"Footer Test",
                    
                    closeCallback: function() 
                    {
                        //alert('You closed the alert!');
                    }
                });
               //  alert('end')
            }
        }
    );
    }
    
})