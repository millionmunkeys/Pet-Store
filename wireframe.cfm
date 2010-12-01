<cfset pageURL = Request.PageMunkey.get('url') />
<table width="100%" border="1" cellspacing="0" cellpadding="5">
	<tr>
		<td valign="top" width="250">
			<h3 align="center">Site Map</h3>
			<table border="0" id="navigation">
				<cfset siteQuery = Request.TrafficMunkey.toQuery() />
				<cfset maxLevel = ArrayMax( ListToArray(ValueList(siteQuery.level)) ) />
				<cfoutput query="siteQuery">
					<tr>
						<td width="20"><cfif current_page>&gt;&gt;<cfelse>&nbsp;</cfif></td>
						<cfloop from="2" to="#level#" index="i">
							<td width="20">&nbsp;</td>
						</cfloop>
						<td colspan="#maxLevel-level+1#" nowrap="nowrap">
							<a href="#siteQuery.url#"><cfif Len(title)>#title#<cfelse>#url#</cfif></a>
						</td>
					</tr>
				</cfoutput>
			</table>
		</td>
		<td valign="top">
			<cfif ListLast(pageURL,"/") neq ListLast(GetCurrentTemplatePath(),"\/")>
				<cfoutput>
					<!--- Breadcrumbs --->
					<p>
						Breadcrumbs:<br />
						<blockquote>
							<cfset breadcrumbs = Request.PageMunkey.get('breadcrumbs') />
							<cfloop from="1" to="#breadcrumbs.getLength()#" index="i">
								<cfset crumb = breadcrumbs.get(i) />
								<a href="#crumb.get('url')#">
									<cfif Len(crumb.get('title'))>
										#crumb.get('title')#
									<cfelse>
										Level #i#
									</cfif>
								</a> &ndash;&gt;
							</cfloop>
						</blockquote>
					</p>
					<!--- Links --->
					<p>
						Links:<br />
						<cfif Request.LinkMunkey.getLength()>
							<br />
							<ul>
								<cfloop from="1" to="#Request.LinkMunkey.getLength()#" index="i">
									<cfset link = Request.LinkMunkey.get(i) />
									<li><a href="#link.get('url')#">#link.get('name')#</a> &ndash;&gt; #link.get('url')#</li>
								</cfloop>
							</ul>
						<cfelse>
							<blockquote><i>none</i></blockquote>
						</cfif>
					</p>
				</cfoutput>
			</cfif>
			<!--- Notes --->
			Notes:<br />
			<blockquote>
				<!--- Establish Wireframe DB --->
				<cfif not StructKeyExists(Application,"Wireframe")>
					<cfset Application.Wireframe = QueryNew("url,comments") />
				</cfif>
				<cfset notes_db = Application.Wireframe />
				<!--- Get Page Notes --->
				<cfquery name="page_notes" dbtype="query">
					SELECT * FROM notes_db
					<cfif ListLast(pageURL,"/") neq ListLast(GetCurrentTemplatePath(),"\/")>
						WHERE url = '#pageURL#'
					</cfif>
				</cfquery>
				<!--- Save Submitted Data --->
				<cfif StructKeyExists(Form,"fieldnames") and ListFindNoCase(Form.fieldnames,"wireframe_comments")>
					<cfif page_notes.recordcount>
						<cfloop query="notes_db">
							<cfif notes_db.url eq pageURL>
								<cfif Len(Form.wireframe_comments)>
									<cfset notes_db.comments[currentrow] = Form.wireframe_comments />
								<cfelse>
									<cfset notes_db.comments[currentrow] = "" />
								</cfif>
							</cfif>
						</cfloop>
					<cfelseif Len(Form.wireframe_comments)>
						<cfset QueryAddRow(notes_db) />
						<cfset QuerySetCell(notes_db,"url",pageURL) />
						<cfset QuerySetCell(notes_db,"comments",Form.wireframe_comments) />
					</cfif>
					<cflocation url="#ListAppend(pageURL,CGI.QUERY_STRING,"?")#" addtoken="no" />
				</cfif>
				<cfif ListLast(pageURL,"/") eq ListLast(GetCurrentTemplatePath(),"\/")>
					<!--- Display All --->
					<cfoutput query="page_notes">
						#page_notes.url#:<br />
						<blockquote>
							<cfif Len(page_notes.comments)>
								#page_notes.comments#
							<cfelse>
								<i>none</i>
							</cfif>
						</blockquote>
					</cfoutput>
				<cfelse>
					<!--- Edit Form --->
					<form name="notes" action="" method="post">
						<cfoutput>
							<textarea name="wireframe_comments" cols="75" rows="10">#page_notes.comments#</textarea>
							<br />
							<input type="submit" value="Save" />
							<p>(The comments above will be saved for as long as the Application scope persists.  To save the notes, click here to <a href="#Request.TrafficMunkey.get('baseURLPath')#wireframe.cfm">view all</a>, and copy and paste.)</p>
						</cfoutput>
					</form>
				</cfif>
			</blockquote>
		</td>
	</tr>
</table>
