<cfcomponent>
    <cffunction name="getRegister" access="remote">
        <cfargument name="fullname" type="any" default="#form.fname#">
        <cfargument name="mail" type="any" default="#form.mail#">
        <cfargument name="uname" type="any" default="#form.uname#">
        <cfargument name="pswd" type="any" default="#form.password#">
        <cfargument name="conpswd" type="any" default="#form.conpswd#">
        <cfquery name="register">
            INSERT INTO logindata (FullName,EmailID,UserName,Password,ConfirmPassword)
            VALUES (
                <cfqueryparam value="#arguments.fullname#" cfsqltype="cf_sql_varchar">,
                <cfqueryparam value="#arguments.mail#" cfsqltype="cf_sql_varchar">,
                <cfqueryparam value="#arguments.uname#" cfsqltype="cf_sql_varchar">,
                <cfqueryparam value="#arguments.pswd#" cfsqltype="cf_sql_varchar">,
                <cfqueryparam value="#arguments.conpswd#" cfsqltype="cf_sql_varchar">
            );
        </cfquery>
    </cffunction>
</cfcomponent>