<cfcomponent persistent="true" table="createDtls"> 
    <cfproperty name="ID" column = "ARTISTID" generator="increment"> 
    <cfproperty name="TITLE" type="string">
    <cfproperty name="FIRSTNAME" type="string">
    <cfproperty name="LASTNAME" type="string">
    <cfproperty name="GENDER" type="string">
    <cfproperty name="DATE" type="date">
    <cfproperty name="FILE" type="string">
    <cfproperty name="ADDRESS" type="string">
    <cfproperty name="STREET" type="string">
    <cfproperty name="CITY" type="string">
    <cfproperty name="STATE" type="string">
    <cfproperty name="EMAIL" type="string">
    <cfproperty name="MOBILENUMBER" type="numeric">
</cfcomponent> 
