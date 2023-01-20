<cfcomponent>
    <cffunction name="getName" access="remote" returnType="query">
        <cfquery name="userRegister">
            SELECT FullName
            FROM logindata
        </cfquery>
        <cfreturn userRegister>
    </cffunction>

    <cffunction  name="getinsert" access="remote" returnType="array">
        <cfset ORMReload()>
        <cfset tableQuery= entityLoad('createDtls')>
        <cfreturn tableQuery>
    </cffunction>
</cfcomponent>
