<cfcomponent>
    <cffunction  name="getlogin" access="public" returnType="any">
        <cfargument name="username" type="any" default="#form.uname#">
        <cfargument name="password" type="any" default="#form.password#">
        <cfquery name="addlogin">
            SELECT UserName, Password
            FROM logindata
            WHERE UserName = <cfqueryparam value="#arguments.username#" cfsqltype="cf_sql_varchar">
        </cfquery>
        <cfquery name="userpswd">
            SELECT UserName, Password
            FROM logindata
            WHERE Password = <cfqueryparam value="#arguments.password#" cfsqltype="cf_sql_varchar"> 
        </cfquery>
        <cfif addlogin.recordcount>
            <cfif userpswd.recordcount>
                <cfset session.uname = addlogin.UserName>
                <cfset session.userflag = 1>
                <cflocation url="main.cfm" addtoken="No">
            <cfelse>
                <cfreturn "Invalid Password!!Please Enter correct Password!">
            </cfif>
        <cfelse>
            <cfreturn "Invalid Username!!Please Enter correct UserName!">
        </cfif>
    </cffunction>
</cfcomponent>