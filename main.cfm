<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/addressbook.css"> 
        <link rel="stylesheet" href="aassets/modal.css">
    </head>
    <body>
        <cfoutput>
            <cfif structKeyExists(session,'userflag')>
                <cfinclude template="mainheader.cfm">
                <div class="content">
                    <div class="contentTop">
                        <div class="contentImg flex">
                            <a href="pdfdata.cfm">
                                <img src="aassets/pdfimg.png" alt="Not found" class="download">
                            </a>
                            <a href="exceldata.cfm">
                                <img src="aassets/excel.png" alt="Not found" class="download">
                            </a>
                            <a onclick="printSection()">
                                <img src="aassets/print.png" alt="Not found" class="download">
                            </a>
                        </div>
                    </div>
                    <div class="contentMain flex">
                        <div class="userContent">
                            <img src="aassets/user.png" alt="Not found" class="loginuser">
                            <div class="nameMain color">
                                <cfinvoke method="getName" component="components/register" returnVariable="result">
                                #result.FullName#
                            </div>
                            <div class="createContact">
                                <button type="submit" name="create" class="create" onclick="document.getElementById('create').style.display='block'">CREATE CONTACT</button>
                                <div id="create" class="w3-modal">
                                    <div class="w3-content w3-container w3-card" style="width: 700px; display:flex;">
                                        <span onclick="document.getElementById('create').style.display='none'" class="w3-button w3-display-topright">&times;</span>
                                        <div class="w3-container" style="background-color:skyblue; display:flex;">
                                            <cfinclude template="create.cfm">
                                            <div class="imgwidth">
                                                <img src="aassets/user.png" alt="Not found" class="modalimg">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="contentList">
                            <div class="listdtls">
                                <cfinvoke  method="getinsert" component="components/register" returnVariable="createDtls">
                                <table class="conttable">
                                    <tr class="conttr color">
                                        <th class="contth"></th>
                                        <th class="contth">Name</th>
                                        <th class="contth">Email</th>
                                        <th class="contth">Phone Number</th>
                                        <th class="contth"></th>
                                        <th class="contth"></th>
                                        <th class="contth"></th>
                                    </tr>
                                    <cfloop array="#createDtls#" index="createDtls">
                                        <tr class="conttr">
                                            <td class="conttd">
                                                <cfset local.setimage = createDtls.getFileUpload()>
                                                <img src="aassets\uploadedfile\#local.setimage#" name="myImage" class="userImg">
                                            </td>
                                            <td class="conttd">#createDtls.getFirstName()# #createDtls.getLastName()#</td>
                                            <td class="conttd">#createDtls.getEmail()#</td>
                                            <td class="conttd">#createDtls.getMobileNumber()#</td>
                                            <td class="conttd">
                                                <button class="edit" type="submit" onclick="document.getElementById('edit').style.display='block'; editData('#createDtls.getID()#')">
                                                    Edit
                                                </button>
                                                <div id="edit" class="w3-modal">
                                                    <cfinclude  template="edit.cfm">
                                                </div>
                                            </td>
                                            <td class="conttd">
                                                <a href="components/delete.cfc?method=deletepage&name=#createDtls.getID()#">
                                                    <button class="edit" type="submit">
                                                        Delete
                                                    </button>
                                                </a>
                                            </td>
                                            <td class="conttd">
                                                <button class="edit" type="submit" id="viewSubmit" onclick="document.getElementById('view').style.display='block'; viewData('#createDtls.getID()#')">
                                                    View
                                                </button>
                                                <div id="view" class="w3-modal">
                                                    <cfinclude template="view.cfm">
                                                </div>
                                            </td>
                                        </tr>
                                    </cfloop>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="print">
                    <h3 class="printdtl">Detailed List</h3>
                    <cfinvoke method="getinsert" component="components/register" returnVariable="createDtls">
                    <table class="printtable">
                        <tr class="printtr">
                            <th></th>
                            <th class="printlist">Name</th>
                            <th class="printlist">Email ID</th>
                            <th class="printlist">Phone Number</th>
                        </tr>
                        <cfloop array="#createDtls#" index="createDtls">
                            <tr class="printtr">
                                <cfset local.userImg=createDtls.getGender()>
                                <td><img src="aassets/#local.userImg#.png" class="userImg display"></td>
                                <td class="printtd">#createDtls.getFirstName()# #createDtls.getLastName()#</td>
                                <td class="printtd">#createDtls.getEmail()#</td>
                                <td class="printtd">#createDtls.getMobileNumber()#</td>
                            </tr>
                        </cfloop>
                    </table>
                </div>
            <cfelse>
                <cflocation  url="../login.cfm" addtoken="no">
            </cfif>
        </cfoutput>
        <script src="aassets/jquery.js"></script>
        <script src="aassets/jquery.min.js"></script>
        <script src="js/dataaset.js"></script>
        <script src="js/dataedit.js"></script>
        <script src="js/print.js"></script>
    </body>
</html>