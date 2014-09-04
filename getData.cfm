
<!--- DataTables Sample --->

<cfoutput>

<cfset resultArray 	= ArrayNew(1) />
<cfset status 		= true />
<cfset totalCount	= 0 />

<cftry>
	<cfquery name="myQuery" datasource="gate2b_core">
		select top 50 uid,name,phone from company
	</cfquery>
	<cfloop query="myQuery">
		<cfset tempStruct = structNew() />
		<cfset tempStruct['Sl'] = myQuery.uid />
		<cfset tempStruct['Name'] = myQuery.name />
		<cfset tempStruct['Phone'] = myQuery.phone />
		<cfset ArrayAppend(resultArray,tempStruct) />
	</cfloop>
	<cfset totalCount	= myQuery.recordCount />
	<cfcatch>
		<cfset status 	= false />
	</cfcatch>
</cftry>


	
<cfif status>	
	{
	    "sEcho": 1,
  		"iTotalRecords": "#totalCount#",
  		"iTotalDisplayRecords": "#totalCount#",
	    "aaData": #SerializeJSON(resultArray)#
	}
<cfelse>
	{
	    "aaData": [
	    	{"Sl":1,"Name":"Sample1","Phone":2345}
	    	,{"Sl":2,"Name":"Sample2","Phone":22349}
	    ]
	}
</cfif>

</cfoutput>