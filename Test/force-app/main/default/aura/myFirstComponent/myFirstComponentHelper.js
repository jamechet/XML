({
    helperMethod : function() {

    },
    setViewData: function(component, attribute, controller){
        // Create the action
       var action = component.get(controller);
        component.set('v.columns', [
            {label: 'First Name', fieldName: 'FirstName', type: 'text'}]);
       // Add callback behavior for when response is received
       action.setCallback(this, function(response) {
           var state = response.getState();
           if (state === "SUCCESS") {
               component.set(attribute, response.getReturnValue());
           }
           else {
               console.log("Failed with state: " + state);
           }
       });
       // Send action off to be executed
       $A.enqueueAction(action);
    },
})