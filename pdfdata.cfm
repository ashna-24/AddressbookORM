<cfdocument format="PDF" filename="addressbook.pdf" overwrite="Yes">
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
    <html>
        <head>
            <meta charset="UTF-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <link rel="stylesheet" href="css/addressbook.css"> 
        </head>
        <body class="pdf">
            <cfoutput>
                <h3 class="pdfdtl">Detailed List</h3>
                <cfinvoke method="getinsert" component="components/register" returnVariable="createDtls">
                <table class="pdftable">
                    <tr class="pdftr">
                        <th></th>
                        <th class="pdflist">Name</th>
                        <th class="pdflist">Email ID</th>
                        <th class="pdflist">Phone Number</th>
                    </tr>
                    <cfloop array="#createDtls#" index="createDtls">
                        <tr class="pdftr">
                            <cfset local.userImg=createDtls.getGender()>
                            <td><img src="aassets/#local.userImg#.png" class="userImg display"></td>
                            <td class="pdftd">#createDtls.getFirstName()# #createDtls.getLastName()#</td>
                            <td class="pdftd">#createDtls.getEmail()#</td>
                            <td class="pdftd">#createDtls.getMobileNumber()#</td>
                        </tr>
                    </cfloop>
                </table>
            </cfoutput>
        </body>
    </html>
</cfdocument>
<cfheader name="Content-Disposition" value="attachment;filename=addressbook.pdf">
<cfcontent file="#expandPath('.')#\addressbook.pdf" deletefile="Yes">