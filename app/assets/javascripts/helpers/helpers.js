sub.Constants = {}

getFormObj = function(form) {
    var formObj, inputs;
    formObj = {};
    todo = {}
    inputs = $(form).serializeArray();
    $.each(inputs, function(i, input) {
        return formObj[input.name] = input.value;
    });
    // while there is no presenter
    delete formObj['id']
    delete formObj['created_at']
    delete formObj['updated_at']
    return formObj;
};

sub.Constants.STATUSES = {
    0: 'Unstarted',
    1: 'Unestimated',
    2: 'Started',
    3: 'Finished',
    4: 'Delivered',
    5: 'Accepted',
    6: 'Rejected'
}

statusHelper = function(status){
    return sub.Constants.STATUSES[status]
}

dropDownHelper = function(value, selected){
    var html = [];
    html.push('value=');
    html.push(value);
    if (value == selected){
        html.push(' selected=');
        html.push(selected);
    }
    return html.join('')
}

createOrUpdate = function(id){
    if (id){
        return 'Update';
    }
    else{
        return 'Create';
    }

}