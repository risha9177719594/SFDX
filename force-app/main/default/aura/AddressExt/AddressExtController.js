({
    doInit : function(cmp, event, helper) {
        var action = cmp.get("c.getExtAddres");
        action.setParams({ con : '' });
        action.setCallback(this, function(response) {
            var state = response.getState();
            if (state === "SUCCESS") {
                cmp.set('v.selectValue',response.getReturnValue());
            }
        });

    }
})
