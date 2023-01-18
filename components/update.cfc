<cfcomponent>
    <cffunction name="getUpdate" access="remote" returnType="struct" returnFormat="json">
        <cfargument name="contactid" type="numeric" required="yes">
        <cfargument name="title" type="string" required="yes">
        <cfargument name="firstname" type="string" required="yes">
        <cfargument name="Lastname" type="string" required="yes">
        <cfargument name="gender" type="string" required="yes">
        <cfargument name="dob" type="string" required="yes">
        <cfargument name="address" type="string" required="yes">
        <cfargument name="street" type="string" required="yes">
        <cfargument name="city" type="string" required="yes">
        <cfargument name="state" type="string" required="yes">
        <cfargument name="mail" type="string" required="yes">
        <cfargument name="phone" type="string" required="yes">

        <cfset contdtls = createobject("component", "create")>
        <cfset contdtls.setTitle("#arguments.title#")>
        <cfset contdtls.setFirstname("#arguments.firstname#")>
        <cfset contdtls.setLastname("#arguments.lastname#")>
        <cfset contdtls.setGender("#arguments.gender#")>
        <cfset contdtls.setDate("#arguments.date#")>
        <cfset contdtls.setAddress("#arguments.address#")>
        <cfset contdtls.setStreet("#arguments.street#")>
        <cfset contdtls.setCity("#arguments.city#")>
        <cfset contdtls.setState("#arguments.state#")>
        <cfset contdtls.setEmail("#arguments.mail#")>
        <cfset contdtls.setMobileNumber("#arguments.phone#")>
    </cffunction>
</cfcomponent>    