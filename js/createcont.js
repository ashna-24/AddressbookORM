function validatecreate(){
    var select = document.getElementById('select');
    var first = document.getElementById('first');
    var last = document.getElementById('last');
    var gender = document.getElementById('gender');
    var date = document.getElementById('date');
    var file = document.getElementById('file');
    var address = document.getElementById('address');
    var street = document.getElementById('street');
    var city = document.getElementById('city');
    var state = document.getElementById('state');
    var number = document.getElementById('number');
    var mobile = document.getElementById('mobile');

    var selectvalidate = validateselect(select);
    var firstvalidate = validatefirst(first);
    var lastvalidate = validatelast(last);
    var gendervalidate = validategender(gender);
    var datevalidate = validatedate(date);
    var filevalidate = validatefile(file);
    var addressvalidate = validateaddress(address);
    var streetvalidate = validatestreet(street);
    var cityvalidate = validatecity(city);
    var statevalidate = validatestate(state);
    var numbervalidate = validatenumber(number);
    var mobilevalidate = validatemobile(mobile);

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

function validateselect(select){
    if(select.value==""){
        errorValidate('select_error');  
        select.style.border="1px solid red";
        return false;
    } else{
        successValidate('select_error');
        select.style.border="1px solid white";
        return true;
    }
}

function validatefirst(first){
    var lettersonly = /^[A-Za-z]+$/;
    if(first.value.match(lettersonly)){
        successValidate('first_error');
        first.style.border="1px solid white";
        return true;
    }else{
        errorValidate('first_error'); 
        first.style.border="1px solid red"; 
        return false;
    }
}

function validatelast(last){
    var lettersonly = /[A-Za-z]+$/;
    if(last.value.match(lettersonly)){
        successValidate('last_error');
        last.style.border="1px solid white";
        return true;
    }else{
        errorValidate('last_error'); 
        last.style.border="1px solid red"; 
        return false;
    }
}

function validategender(gender){
    if(gender.value==""){
        errorValidate('gender_error');  
        gender.style.border="1px solid red";
        return false;
    }else{
        successValidate('gender_error');
        gender.style.border="1px solid white";
        return true;
    }
}

function validatedate(date){
    if(date.value==""){
        errorValidate('date_error');
        date.style.border="1px solid red";  
        return false;
    }else{
        successValidate('date_error');
        date.style.border="1px solid white";
        return true;
    }
}

function validatefile(file){
    if(file.value==""){
        errorValidate('file_error'); 
        file.style.border="1px solid red"; 
        return false;
    }else{
        successValidate('file_error');
        file.style.border="1px solid white";
        return true;
    }
}

function validateaddress(address){
    if(address.value==""){
        errorValidate('add_error'); 
        address.style.border="1px solid red"; 
        return false;
    }else{
        successValidate('add_error');
        address.style.border="1px solid white";
        return true;
    }
}

function validatestreet(street){
    if(street.value==""){
        errorValidate('street_error');
        street.style.border="1px solid red";  
        return false;
    }else{
        successValidate('street_error');
        street.style.border="1px solid white";
        return true;
    }
}

function validatecity(city){
    var lettersonly = /^[A-Za-z]+$/;
    if(city.value.match(lettersonly)){
        successValidate('city_error');
        city.style.border="1px solid white";
        return true;
    }else{
        errorValidate('city_error'); 
        city.style.border="1px solid red"; 
        return false;
    }
}

function validatestate(state){
    var lettersonly = /^[A-Za-z]+$/;
    if(state.value.match(lettersonly)){
        successValidate('state_error');
        state.style.border="1px solid white";
        return true;
    }else{
        errorValidate('state_error'); 
        state.style.border="1px solid red"; 
        return false;
    }
}

function validatenumber(number){
    var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
    if(number.value.match(mailformat)){
        successValidate('phone_error');
        number.style.border="1px solid white";
        return true;
    }else{
        errorValidate('phone_error'); 
        number.style.border="1px solid red"; 
        return false;
    }
}

function validatemobile(mobile){
    var phoneno = /^\d{10}$/;
    if(mobile.value.match(phoneno)){
        successValidate('num_error');
        mobile.style.border="1px solid white";
        return true;
    }else{
        errorValidate('num_error'); 
        mobile.style.border="1px solid red"; 
        return false;
    }
}

/* validateGmail(number){
    var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
    if(email.value.match(mailformat)){
        alert("Valid email address!");
        document.createForm.createnumber.focus();
        return true;
    }else{
        alert("You have entered an invalid email address!");
        document.createForm.createnumber.focus();
        return false;
    }
} */