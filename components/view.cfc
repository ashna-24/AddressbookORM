<cfcomponent>
    <cffunction name="getData" access="remote" returnType="struct" returnFormat="json">        
        <!---<cfquery name="aboutQuery">
        <cfset contdtls = createobject("component", "create")>
        <cfset contdtls.getTitle("#arguments.title#")>
        <cfset contdtls.getFirstname("#arguments.firstname#")>
        <cfset contdtls.getLastname("#arguments.lastname#")>
        <cfset contdtls.getGender("#arguments.gender#")>
        <cfset contdtls.getDate("#arguments.date#")>
        <cfset contdtls.getFile("#arguments.file#")>
        <cfset contdtls.getAddress("#arguments.address#")>
        <cfset contdtls.getStreet("#arguments.street#")>
        <cfset contdtls.getCity("#arguments.city#")>
        <cfset contdtls.getState("#arguments.state#")>
        <cfset contdtls.getEmail("#arguments.number#")>
        <cfset contdtls.getMobileNumber("#arguments.mobile#")>
        <cfset local.viewQuery=structNew()>
        <cfset local.viewQuery.FirstName = contdtls.FirstName>
        <cfset local.viewQuery.LastName = contdtls.LastName>
        <cfset local.viewQuery.Gender = contdtls.Gender>
        <cfset local.viewQuery.DOB = contdtls.DateOfBirth>
        <cfset local.viewQuery.Address = contdtls.Address>
        <cfset local.viewQuery.Street = contdtls.Street>
        <cfset local.viewQuery.City = contdtls.City>
        <cfset local.viewQuery.State = contdtls.State>        
        <cfset local.viewQuery.Email = contdtls.Email>        
        <cfset local.viewQuery.MobileNumber = contdtls.MOBILENUMBER>  
        <cfreturn local.viewQuery>      
        <cfargument name="Email" type="string" required="yes">
            SELECT *
            FROM contactDtls
            WHERE FirstName = <cfqueryparam value="#arguments.Email#" cfsqltype="cf_sql_varchar">
        </cfquery>
        --->
    </cffunction>
</cfcomponent>