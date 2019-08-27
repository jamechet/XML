({
    // Method call when packed button click
    packItem : function (component, event, help) {  
     // mark item arrtibute as packed using a value to true
     component.set("!v.item.Packed__c", true);

     // get the button was clicking
     var btnClick = event.getSource();

     // disblae the button that clicking
     btnClick.set("!v.disabled", true);

    }
    
    
})