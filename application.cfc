<cfcomponent output="false">
	<cfset this.name = "sample">
	<cfset this.sessionManagement = "true">
	<cfset this.sessiontimeout ="#CreateTimeSpan(0,0,45,0)#">
    <cfset this.datasource="employee">
	<cfset this.ormEnabled="true">
	<cfset this.ormsettings={logsql="true"}>
</cfcomponent>