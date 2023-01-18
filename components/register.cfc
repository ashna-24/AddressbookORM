<cfcomponent>
    <cffunction name="getName" access="remote" returnType="query">
        <cfquery name="userRegister">
            SELECT FullName
            FROM logindata
        </cfquery>
        <cfreturn userRegister>
    </cffunction>
</cfcomponent>
