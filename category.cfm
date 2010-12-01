<cfimport prefix="" taglib="/MillionMunkeys/FormMunkey_2_12/">
<form name="category" action="" datasource="Application">
<table>
	<tbody query="Catalog" storage="Catalog">
		<cfset category_count = recordcount />
		<tr>
				<td width="30" align="center">
					<input type="hidden" name="employees_job_titles.employees_job_titles_id.#type#" primarykey="true" />
					<input type="hidden" name="employees_job_titles.AccountName.#type#" />
					<!--- If box is not checked, it doesn't exist in the Form scope, and so we mark it for deletion. --->
					<cfif not StructKeyExists(Form,'employees_job_titles.job_title_id.#type#')>
						<cfset Form['employees_job_titles.AccountName.#type#']="" />
					<cfelse>
						<cfset Form['employees_job_titles.AccountName.#type#']=URL['Employees.AccountName'] />
					</cfif>
					<input type="checkbox" name="employees_job_titles.job_title_id.#type#" editable="true" value="#job_titles.job_title_id#" />
				</td>
			<td>
				<cfif StructKeyExists(Form,'job_titles.title') and Len(Form['job_titles.title'])>
					<cfset Form['job_titles.type'] = URL['job_titles.type'] />
				</cfif>
					<input name="job_categories.job_category_id" type="hidden" editable="#editable#" value="#URL['job_categories.job_category_id']#" />
					<input name="job_titles.job_category_id" type="hidden" editable="#editable#" />
					<input name="job_titles.job_title_id" type="hidden" editable="#editable#" primarykey="true" />
					<input name="job_titles.type" type="hidden" value="" editable="#editable#" />
				<input name="job_titles.title" type="text" value="" editable="#editable#" />
			</td>
			<td>
				Min: 
				<select name="job_titles.min_level" query="job_categories,job_levels" editable="#editable#">
					<option value="">Select</option>
					<option>job_levels.job_level</option>
				</select>
				Max: 
				<select name="job_titles.max_level" query="job_categories,job_levels" editable="#editable#">
					<option value="">Select</option>
					<option>job_levels.job_level</option>
				</select>
				<cfif StructKeyExists(Form,"job_titles.min_level") and editable>
					<validation for="job_titles.max_level" type="server" minValue="#Form['job_titles.min_level']#">
						<br />
						<span class="error">The max level must be greater than or equal to the min level.</span>
					</validation>
				</cfif>
			</td>
			<td>
				<cfif editable>
					<cfif currentrow>
						<input type="submit" name="job_titles.DELETE" value="Delete" editable="#editable#" />
					<cfelse>
						<input type="submit" value="Add" editable="#editable#" />
					</cfif>
				</cfif>
			</td>
		</tr>
	</tbody>
</table>
</form>