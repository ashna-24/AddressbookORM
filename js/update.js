function updateData(message){
    $.ajax({
        url:'components/update.cfc?method=getUpdate',
        type:'post',
        data:{
            method:'getUpdate',
            Email: message,
            contactid: $('#contactId').val(),
            title: $('#viewselect').val(),
            firstname: $('#viewfirst').val(),
            lastname: $('#viewlast').val(),
            gender: $('#viewgender').val(),
            dob: $('#viewdate').val(),
            file: $('#viewfile').val(),
            address: $('#viewaddress').val(),
            street: $('#viewstreet').val(),
            city: $('#viewcity').val(),
            state: $('#viewstate').val(),
            mail: $('#viewnumber').val(),
            phone: $('#viewmobile').val(),
            datatype: 'json'
        },
        success: function(){
            console.log(data)
            alert("Successfully updated");
        }
    })
}