<cfcomponent persistent="true" table="contdtls"> 
    <cfproperty name="ID" column = "ARTISTID" generator="increment"> 
    <cfproperty  name="TITLE" ormtype="string">
    <cfproperty  name="FIRSTNAME" ormtype="string">
    <cfproperty  name="LASTNAME" ormtype="string">
    <cfproperty  name="GENDER" ormtype="string">
    <cfproperty  name="DATE" ormtype="date">
    <cfproperty  name="FILE" ormtype="string">
    <cfproperty  name="ADDRESS" ormtype="string">
    <cfproperty  name="STREET" ormtype="string">
    <cfproperty  name="CITY" ormtype="string">
    <cfproperty  name="STATE" ormtype="string">
    <cfproperty  name="EMAIL" ormtype="string">
    <cfproperty  name="MOBILENUMBER" ormtype="string">
    <!--- <cfset contactdtls = entityLoad('contdtls')> --->
    <cffunction  name="getcontact" access="remote">
        <cfargument name="title" type="any" default="#form.createtitle#">
        <cfargument name="firstname" type="any" default="#form.createfirst#">
        <cfargument name="lastname" type="any" default="#form.createlast#">
        <cfargument name="gender" type="any" default="#form.creategender#">
        <cfargument name="date" type="any" default="#form.createdate#">
        <cfargument name="file" type="any" default="#form.createfile#">
        <cfargument name="address" type="any" default="#form.createaddress#">
        <cfargument name="street" type="any" default="#form.createstreet#">
        <cfargument name="city" type="any" default="#form.createcity#">
        <cfargument name="state" type="any" default="#form.createstate#">
        <cfargument name="number" type="any" default="#form.createnumber#">
        <cfargument name="mobile" type="any" default="#form.createmobile#">
      
          <cfdump var="#arguments#" abort>
        <cfset contdtls = entityNew('contdtls')>
        <cfset contdtls.setTitle("#arguments.title#")>
        <cfset contdtls.setFirstname("#arguments.firstname#")>
        <cfset contdtls.setLastname("#arguments.lastname#")>
        <cfset contdtls.setGender("#arguments.gender#")>
        <cfset contdtls.setDate("#arguments.date#")>
        <cfset contdtls.setFile("#arguments.file#")>
        <cfset contdtls.setAddress("#arguments.address#")>
        <cfset contdtls.setStreet("#arguments.street#")>
        <cfset contdtls.setCity("#arguments.city#")>
        <cfset contdtls.setState("#arguments.state#")>
        <cfset contdtls.setEmail("#arguments.number#")>
        <cfset contdtls.setMobile("#arguments.mobile#")>
    </cffunction>
</cfcomponent> 
