<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/address.css"> 
    </head>
    <body>
        <cfoutput>
            <cfif structKeyExists(session,'userflag')>
                <div class="w3-content w3-container w3-card" style="width: 700px; display:flex;">
                    <div class="w3-container" style="background-color:skyblue; display:flex;">
                        <div class="w3-container w3-white">
                            <div class="contact">
                                <p class="modalCreate">EDIT CONTACT</p>
                            </div>
                            <div class="createPersonal">
                                <p class="personal color">Personal Contact</p>
                                <div class="formData">
                                    <form action="" method="post" autocomplete="off" enctype="multipart/form-data" onsubmit="return validateedit()">
                                        <div class="row1 flex">
                                            <input type="hidden" id="contactId" name="contactId" value="">
                                            <div class="psnlTop">
                                                <p class="psnlmsg color">Title*</p>
                                                <select class="select" id="viewselect" name="edittitle" value="" onblur="validateedit()">
                                                    <option></option>
                                                    <option>Mr.</option>
                                                    <option>Mrs.</option>
                                                    <option>Ms.</option>
                                                    <option>Other</option>
                                                </select>
                                                <span id="select" class="error">Required*</span>
                                            </div>
                                            <div class="psnlMiddle">
                                                <p class="psnlmsg color">FirstName*</p>
                                                <input type="text" name="editfirst" class="fname" id="viewfirst" value="" onblur="validateedit()">
                                                <span id="first" class="error">Required*</span>
                                            </div>
                                            <div class="psnlbottom">
                                                <p class="psnlmsg color">LastName*</p>
                                                <input type="text" name="editlast" class="fname" id="viewlast" value="" onblur="validateedit()">
                                                <span id="last" class="error">Required*</span>
                                            </div>
                                        </div>
                                        <div class="row2 flex">
                                            <div class="psnlgender">
                                                <p class="psnlmsg color">Gender*</p>
                                                <select class="gender" id="viewgender" name="editgender" value="" onblur="validateedit()">
                                                    <option></option>
                                                    <option>Male</option>
                                                    <option>Female</option>
                                                    <option>Other</option>
                                                </select>
                                                <span id="gender" class="error">Required*</span>
                                            </div>
                                            <div class="psnlDOB">
                                                <p class="psnlmsg color">Date of Birth*</p>
                                                <input type="date" class="date" name="editdate" id="viewdate"  value="" onblur="validateedit()">
                                                <span id="date" class="error">Required*</span>
                                            </div>
                                        </div>
                                        <div class="upload">
                                            <p class="psnlmsg color">Upload Photo</p>
                                            <input type="file" name="editfile" class="file" id="viewfile" value="" onblur="validateedit()">
                                            <span id="file" class="error">Required*</span>
                                        </div>
                                        <div class="details">
                                            <p class="contdetails color">Contact Details</p>
                                        </div>
                                        <div class="row3 flex">
                                            <div class="address">
                                                <p class="psnlmsg color">Address*</p>
                                                <input type="text" name="editaddress" class="date" id="viewaddress" value="" onblur="validateedit()">
                                                <span id="add" class="error">Required*</span>
                                            </div>
                                            <div class="street">
                                                <p class="psnlmsg color">Street*</p>
                                                <input type="text" name="editstreet" class="date" id="viewstreet" value="" onblur="validateedit()">
                                                <span id="street" class="error">Required*</span>
                                            </div>
                                        </div>
                                        <div class="row3 flex">
                                            <div class="address">
                                                <p class="psnlmsg color">City*</p>
                                                <input type="text" name="editcity" class="date" id="viewcity" value="" onblur="validateedit()">
                                                <span id="city" class="error">Required*</span>
                                            </div>
                                            <div class="street">
                                                <p class="psnlmsg color">State*</p>
                                                <input type="text" name="editstate" class="date" id="viewstate" value="" onblur="validateedit()">
                                                <span id="state" class="error">Required*</span>
                                            </div>
                                        </div>
                                        <div class="row3 flex">
                                            <div class="address">
                                                <p class="psnlmsg color">Email*</p>
                                                <input type="text" name="editnumber" class="date" id="viewnumber" value="" onblur="validateedit()">
                                                <span id="phone" class="error">Required*</span>
                                            </div>
                                            <div class="street">
                                                <p class="psnlmsg color">Mobile Number*</p>
                                                <input type="text" name="editmobile" class="date" id="viewmobile" value="" onblur="validateedit()">
                                                <span id="num" class="error">Required*</span>
                                            </div>
                                        </div>
                                        <div class="bottom">
                                            <a href="main.cfm" onclick="updateData()">
                                                <input type="submit" value="Submit" name="close" class="editclose">
                                            </a>
                                        </div>
                                    </form>
                                    <cfif structKeyExists(form, 'close')>
                                        <cfinvoke method="getfile" component="components/update">
                                    </cfif>
                                </div>
                            </div>
                        </div>
                        <div class="imgwidth edtviwimg" id="editimg">
                        </div>
                    </div>
                </div>
            <cfelse>
                <cflocation url="../login.cfm" addtoken="no">
            </cfif>
        </cfoutput>
        <script src="aassets/jquery.js"></script>
        <script src="aassets/jquery.min.js"></script>
        <script src="js/edit.js"></script>
        <script src="js/dataupdate.js"></script>
    </body>
</html>