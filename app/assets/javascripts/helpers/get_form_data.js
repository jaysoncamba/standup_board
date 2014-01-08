StandupBoard.Constants = {}

getFormObj = function(form) {
    var formObj, inputs;
    formObj = {};
    inputs = $(form).serializeArray();
    $.each(inputs, function(i, input) {
        return formObj[input.name] = input.value;
    });
    return formObj;
};

StandupBoard.Constants.STATUSES = {
    0: 'Unstarted',
    1: 'Unestimated',
    2: 'Started',
    3: 'Finished',
    4: 'Delivered',
    5: 'Accepted',
    6: 'Rejected'
}

statusHelper = function(status){
    return StandupBoard.Constants.STATUSES[status]
}