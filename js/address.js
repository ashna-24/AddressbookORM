function validateform(){
    var uname = document.getElementById('uname');
    var pswd = document.getElementById('pswd');
    var fname = document.getElementById('fname');
    var mail = document.getElementById('mail');
    var conpswd = document.getElementById('conpswd');
    
    var unamevalidate = validateuname(uname);
    var pswdvalidate = validatepswd(pswd);
    var fnamevalidate = validatefname(fname);
    var mailvalidate = validatemail(mail);
    var conpswdvalidate = validateconpswd(conpswd);
    
    if(unamevalidate && pswdvalidate && fnamevalidate && mailvalidate &&conpswdvalidate)
        return true;
    else
        return false;
}

function errorValidate(id){
    document.getElementById(id).style.visibility="visible";
}
  
function successValidate(id){
    document.getElementById(id).innerHTML="";
}

function validateuname(uname){
    if(uname.value==""){
        errorValidate('uname_error');
        uname.style.border="1px solid red";  
        return false;
    }else{
        successValidate('uname_error');
        uname.style.border="1px solid green";
        return true;
    }
}

function validatepswd(pswd){
    var passw=  /^(?=.*[0-9])(?=.*[!@#$%^&*])[a-zA-Z0-9!@#$%^&*]{7,15}$/;
    if(pswd.value.match(passw)){
        successValidate('pswd_error');
        pswd.style.border="1px solid green";
        return true;
    }else{
        errorValidate('pswd_error');
        pswd.style.border="1px solid red";  
        return false;
    }
}

function validatefname(fname){
    if(fname.value==""){
        errorValidate('fname_error');
        fname.style.border="1px solid red";  
        return false;
    }else{
        successValidate('fname_error');
        fname.style.border="1px solid green";
        return true;
    }
}

function validatemail(mail){
    var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
    if(mail.value.match(mailformat)){
        successValidate('mail_error');
        mail.style.border="1px solid green";
        return true;
    }else{
        errorValidate('mail_error'); 
        mail.style.border="1px solid red"; 
        return false;
    }
}

function validateconpswd(conpswd){
    var passw=  /^(?=.*[0-9])(?=.*[!@#$%^&*])[a-zA-Z0-9!@#$%^&*]{7,15}$/;
    if(conpswd.value.match(passw)){
        successValidate('conpswd_error');
        conpswd.style.border="1px solid green";
        return true;
    }
    else if(conpswd.value != pswd.value){
        errorValidate('conform');
        conpswd.style.border="1px solid red";  
        return false;
    }
    else{
        errorValidate('conpswd_error');
        conpswd.style.border="1px solid red";  
        return false;
    }
}