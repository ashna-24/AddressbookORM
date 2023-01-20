<cfcomponent>
    <cffunction name="getcontact" access="remote" returnType="any">
        <cfargument name="title" type="string" default="#form.select#">
        <cfargument name="firstname" type="string" default="#form.first#">
        <cfargument name="lastname" type="string" default="#form.last#">
        <cfargument name="gender" type="string" default="#form.gender#">
        <cfargument name="date" type="date" default="#form.date#">
        <cfargument name="file" type="any" default="#form.file#">
        <cfargument name="address" type="string" default="#form.address#">
        <cfargument name="street" type="string" default="#form.street#">
        <cfargument name="city" type="string" default="#form.city#">
        <cfargument name="state" type="string" default="#form.state#">
        <cfargument name="number" type="string" default="#form.number#">
        <cfargument name="mobile" type="any" default="#form.mobile#">
        <cfif len(trim(arguments.file))>
            <cffile action="upload" fileField="file" nameConflict="overwrite" accept="image/jpg,image/jpeg,image/gif,image/png,image/webp" result="thisResult" destination="#expandpath(".\aassets\uploadedfile\")#">
        </cfif>  
        <cfset session.uploadedfile =  thisResult.serverFile> 
        <cfquery name="validate">
            SELECT Email
            FROM createDtls
            WHERE Email = <cfqueryparam value="#arguments.number#" cfsqltype="cf_sql_varchar">
        </cfquery>

        <cfif validate.recordcount eq 0>
            <cfquery name="contact">
                INSERT INTO createDtls(Title,FirstName,LastName,Gender,DateOfBirth,FileUpload,Address,Street,City,State,Email,MobileNumber)
                VALUES (
                    <cfqueryparam value="#arguments.title#" cfsqltype="cf_sql_varchar">,
                    <cfqueryparam value="#arguments.firstname#" cfsqltype="cf_sql_varchar">,
                    <cfqueryparam value="#arguments.lastname#" cfsqltype="cf_sql_varchar">,
                    <cfqueryparam value="#arguments.gender#" cfsqltype="cf_sql_varchar">,
                    <cfqueryparam value="#arguments.date#" cfsqltype="cf_sql_varchar">,
                    <cfqueryparam value="#session.uploadedfile#" cfsqltype="cf_sql_varchar">,
                    <cfqueryparam value="#arguments.address#" cfsqltype="cf_sql_varchar">,
                    <cfqueryparam value="#arguments.street#" cfsqltype="cf_sql_varchar">,
                    <cfqueryparam value="#arguments.city#" cfsqltype="cf_sql_varchar">,
                    <cfqueryparam value="#arguments.state#" cfsqltype="cf_sql_varchar">,
                    <cfqueryparam value="#arguments.number#" cfsqltype="cf_sql_varchar">,
                    <cfqueryparam value="#arguments.mobile#" cfsqltype="cf_sql_varchar">
                );
            </cfquery>
        <cfelse>
            <cfreturn "This record is already exists!">
        </cfif>
    </cffunction>
</cfcomponent> 