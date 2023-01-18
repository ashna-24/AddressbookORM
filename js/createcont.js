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
    if(first.value==""){
        errorValidate('first_error'); 
        first.style.border="1px solid red"; 
        return false;
    }else{
        successValidate('first_error');
        first.style.border="1px solid white";
        return true;
    }
}

function validatelast(last){
    if(last.value==""){
        errorValidate('last_error'); 
        last.style.border="1px solid red"; 
        return false;
    }else{
        successValidate('last_error');
        last.style.border="1px solid white";
        return true;
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
    if(city.value==""){
        errorValidate('city_error'); 
        city.style.border="1px solid red"; 
        return false;
    }else{
        successValidate('city_error');
        city.style.border="1px solid white";
        return true;
    }
}

function validatestate(state){
    if(state.value==""){
        errorValidate('state_error'); 
        state.style.border="1px solid red"; 
        return false;
    }else{
        successValidate('state_error');
        state.style.border="1px solid white";
        return true;
    }
}

function validatenumber(number){
    var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
    if(number.value != mailformat){
        errorValidate('email_error');
        number.style.border="1px solid red";
        return false;
    }else if(number.value==""){
        errorValidate('phone_error'); 
        number.style.border="1px solid red"; 
        return false;
    }else{
        successValidate('phone_error');
        number.style.border="1px solid white";
        return true;
    }
}

function validatemobile(mobile){
    if(mobile.value==""){
        errorValidate('num_error'); 
        mobile.style.border="1px solid red"; 
        return false;
    }else{
        successValidate('num_error');
        mobile.style.border="1px solid white";
        return true;
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

/* $(document).ready(function(){
    $("#createForm").validate({
        rules:{
            select:{
                required: true,
            },
            first:{
                required: true,
                minlength:3,
                lettersonly: true
            },
            last:{
                required: true,
                minlength:1,
                lettersonly: true
            },
            gender:{
                required: true
            },
            date:{
                required: true
            },
            file:{
                required: true
            },
            address:{
                required: true,
                minlength:3
            },
            street:{
                required: true,
                minlength:3,
            },
            city:{
                required: true,
                minlength:1,
                lettersonly: true
            },
            state:{
                required: true,
                minlength:1,
                lettersonly: true
            },
            number:{
                required: true,
                email: true
            },
            mobile:{
                required: true,
                numericonly: true,
                minlength: 10,
                maxlength: 12
            }
        },
        message:{
            select:{
                required:"Required*"
            },
            first:{
                required: "Required*",
                minlength:"Must contain atleast 3 characters",
                lettersonly: "Invalid name"
            },
            last:{
                required: "Required*",
                minlength:"Must contain atleast 1 characters",
                lettersonly:"Invalid name"
            },
            gender:{
                required: "Required*"
            },
            date:{
                required: "Required*"
            },
            file:{
                required: "Required*"
            },
            address:{
                required: "Required*",
                minlength:"Must contain atleast 3 characters"
            },
            street:{
                required: "Required*",
                minlength:"Must contain atleast 3 characters"
            },
            city:{
                required: "Required*",
                minlength:"Must contain atleast 1 characters",
                lettersonly:"Invalid name"
            },
            state:{
                required:"Required*",
                minlength:"Must contain atleast 1 characters",
                lettersonly:"Invalid name"
            },
            number:{
                required: "Required*",
                email: "Enter a valid email"
            },
            mobile:{
                required: "Required*",
                numericonly: "Phone no. is invalid",
                minlength: "Minimum 10 digits",
                maxlength: "Maximum 12 digits"
            }
        }
    });
    jQuery.validator.addMethod('lettersonly',function(value,element){
        return /^[^-\s][a-zA-Z_\s-]+$/.test(value);
    });
 
    jQuery.validator.addMethod('numericonly',function(value,element){
        return /^[0-9]+$/.test(value);
    });
}); */