({
	Redirect : function(component, event, helper) {
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
    },
    AddToCart : function(component, event, helper){
     //   alert("Test")
      
        var eventSource = event.getSource();
        var index = eventSource.get('v.value');
        console.log(index)
        var selectedBeerData = component.get('v.listitems')[index];
        console.log("Selected Beer Id = ",selectedBeerData.Id)
        console.log("Selected Beer Name = ",selectedBeerData.Name)
        console.log("Selected Beer Price = ",selectedBeerData.Price__c)
        var appEvent = $A.get("e.c:CartEvent");
        appEvent.setParams({
            CartRecord : selectedBeerData
                            });
        appEvent.fire();
    }
    
})