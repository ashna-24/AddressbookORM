<cfcomponent>
	<cffunction name="deletepage" access="remote">
		<cfset createDtls= entityLoadByPK("createDtls", url.name)>
		<cfset entityDelete(createDtls)>
		<cflocation url="../main.cfm" addtoken="no">
	</cffunction>
</cfcomponent>