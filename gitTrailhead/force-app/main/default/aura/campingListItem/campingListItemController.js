({
    packItem: function(component, event, helper) {
        let btnClicked = event.getSource();
        let btnToggle = btnClicked.get("v.label"); // the button's label
        component.set("v.item.Packed__c", true);
        component.set("v.Packed", disabled ="true");
    }

})