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
        <cfset local.tableQuery= entityLoad('createDtls')>
        <cfreturn local.tableQuery>
    </cffunction>
</cfcomponent>
