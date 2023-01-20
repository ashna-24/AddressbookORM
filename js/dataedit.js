function editData(message){
    $.ajax({
        url:'components/edit.cfc?method=getEditdata',
        type:'post',
        data:{
            method:'getEditdata',
            name: message,
            datatype: 'json'
        },
        success:function(data){
            var obj = JSON.parse(data);
            $('#contactId').val(obj.ID);
            $('#viewselect').val(obj.TITLE);
            $('#viewfirst').val(obj.FIRSTNAME);
            $('#viewlast').val(obj.LASTNAME);
            $('#viewgender').val(obj.GENDER);
            $('#viewdate').val(obj.DOB);
            $('#viewaddress').val(obj.ADDRESS);
            $('#viewstreet').val(obj.STREET);
            $('#viewcity').val(obj.CITY);
            $('#viewstate').val(obj.STATE);
            $('#viewnumber').val(obj.EMAIL);
            $('#viewmobile').val(obj.MOBILENUMBER);
            var imgedit = document.createElement('img');
            imgedit.src="aassets/uploadedfile/"+obj.FILEUPLOAD;
            imgedit.className="setclass";
            $(imgedit).appendTo('#editimg');
        }
    });
}