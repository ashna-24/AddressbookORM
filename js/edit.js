function validateedit(){
    var select = document.getElementById('viewselect');
    var first = document.getElementById('viewfirst');
    var last = document.getElementById('viewlast');
    var gender = document.getElementById('viewgender');
    var date = document.getElementById('viewdate');
    var file = document.getElementById('viewfile');
    var address = document.getElementById('viewaddress');
    var street = document.getElementById('viewstreet');
    var city = document.getElementById('viewcity');
    var state = document.getElementById('viewstate');
    var number = document.getElementById('viewnumber');
    var mobile = document.getElementById('viewmobile');

    var selectvalidate = validateeditselect(select);
    var firstvalidate = validateeditfirst(first);
    var lastvalidate = validateeditlast(last);
    var gendervalidate = validateeditgender(gender);
    var datevalidate = validateeditdate(date);
    var filevalidate = validateeditfile(file);
    var addressvalidate = validateeditaddress(address);
    var streetvalidate = validateeditstreet(street);
    var cityvalidate = validateeditcity(city);
    var statevalidate = validateeditstate(state);
    var numbervalidate = validateeditnumber(number);
    var mobilevalidate = validateeditmobile(mobile);

    if(selectvalidate && firstvalidate && lastvalidate && gendervalidate && datevalidate && filevalidate && addressvalidate && streetvalidate && cityvalidate && statevalidate && numbervalidate  && mobilevalidate)
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

function validateeditselect(select){
    if(select.value==""){
        errorValidate('select');  
        select.style.border="1px solid red";
        return false;
    } else{
        successValidate('select');
        select.style.border="1px solid white";
        return true;
    }
}

function validateeditfirst(first){
    var lettersonly = /[A-Za-z]/;
    if(first.value.match(lettersonly)){
        successValidate('first');
        first.style.border="1px solid white";
        return true;
    }else{
        errorValidate('first'); 
        first.style.border="1px solid red"; 
        return false;
    }
}

function validateeditlast(last){
    var lettersonly = /[A-Za-z]/;
    if(last.value.match(lettersonly)){
        successValidate('last');
        last.style.border="1px solid white";
        return true;
    }else{
        errorValidate('last'); 
        last.style.border="1px solid red"; 
        return false;
    }
}

function validateeditgender(gender){
    if(gender.value==""){
        errorValidate('gender');  
        gender.style.border="1px solid red";
        return false;
    }else{
        successValidate('gender');
        gender.style.border="1px solid white";
        return true;
    }
}

function validateeditdate(date){
    if(date.value==""){
        errorValidate('date');
        date.style.border="1px solid red";  
        return false;
    }else{
        successValidate('date');
        date.style.border="1px solid white";
        return true;
    }
}

function validateeditfile(file){
    if(file.value==""){
        errorValidate('file'); 
        file.style.border="1px solid red"; 
        return false;
    }else{
        successValidate('file');
        file.style.border="1px solid white";
        return true;
    }
}

function validateeditaddress(address){
    if(address.value==""){
        errorValidate('add'); 
        address.style.border="1px solid red"; 
        return false;
    }else{
        successValidate('add');
        address.style.border="1px solid white";
        return true;
    }
}

function validateeditstreet(street){
    if(street.value==""){
        errorValidate('street');
        street.style.border="1px solid red";  
        return false;
    }else{
        successValidate('street');
        street.style.border="1px solid white";
        return true;
    }
}

function validateeditcity(city){
    var lettersonly = /^[A-Za-z]+$/;
    if(city.value.match(lettersonly)){
        successValidate('city');
        city.style.border="1px solid white";
        return true;
    }else{
        errorValidate('city'); 
        city.style.border="1px solid red"; 
        return false;
    }
}

function validateeditstate(state){
    var lettersonly = /^[A-Za-z]+$/;
    if(state.value.match(lettersonly)){
        successValidate('state');
        state.style.border="1px solid white";
        return true;
    }else{
        errorValidate('state'); 
        state.style.border="1px solid red"; 
        return false;
    }
}

function validateeditnumber(number){
    var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
    if(number.value.match(mailformat)){
        successValidate('phone');
        number.style.border="1px solid white";
        return true;
    }else{
        errorValidate('phone'); 
        number.style.border="1px solid red"; 
        return false;
    }
}

function validateeditmobile(mobile){
    var phoneno = /^\d{10}$/;
    if(mobile.value.match(phoneno)){
        successValidate('num');
        mobile.style.border="1px solid white";
        return true;
    }else{
        errorValidate('num'); 
        mobile.style.border="1px solid red"; 
        return false;
    }
}