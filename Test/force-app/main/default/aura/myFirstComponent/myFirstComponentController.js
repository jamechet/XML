({
    doInit: function(component, event, helper) {
        helper.setViewData(component, "v.contacts", "c.getContacts");
    },

    changeVlaue: function(component, event, helper) {
        component.set("v.childAttr", "Value just changed");
    }
})