getFormObj = function(form) {
    var formObj, inputs;
    formObj = {};
    inputs = $(form).serializeArray();
    $.each(inputs, function(i, input) {
        return formObj[input.name] = input.value;
    });
    return formObj;
};