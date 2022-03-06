({
    applyMaskAndHidCustomButtons : function(component){
        var val=component.find("txtBuscar").get('v.value').replace(/(\W+|[a-z])/,'');
        component.find("txtBuscar").set('v.value',val);
    },
})