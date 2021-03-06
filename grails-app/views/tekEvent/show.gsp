

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'tekEvent.label', default: 'TekEvent')}" />
        <title><g:message code="Show TekEvent" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}">Home</a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="TekEvent List" args="[entityName]" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="New TekEvent" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1>${fieldValue(bean:tekEventInstance, field:'name')}</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="dialog">
                <table>
                    <tbody>
                    
                        
                        <tr class="prop">
                            <td valign="top" class="name">Location:</td>
                            
                            <td valign="top" class="value">
                                ${fieldValue(bean: tekEventInstance, field: "venue")},
                                ${fieldValue(bean: tekEventInstance, field: "city")}
                            </td>
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="tekEvent.description.label" default="Description" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: tekEventInstance, field: "description")}</td>
                            
                        </tr>
                    
                       
                        <tr class="prop">
                            <td valign="top" class="name">Start Date:</td>
                            
                            <td valign="top" class="value">
                                <g:formatDate format="MMMM dd, yyyy"
                                              date="${tekEventInstance?.startDate}" />
                            </td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">End Date:</td>
                            
                            <td valign="top" class="value">
                                <g:formatDate format="MMMM dd, yyyy"
                                              date="${tekEventInstance?.endDate}" /></td>
                            
                        </tr>

                         <tr class="prop">
                            <td valign="top" class="name"><g:message code="tekEvent.organizer.label" default="Organizer" /></td>

                            <td valign="top" class="value"><g:link controller="tekUser" action="show" id="${tekEventInstance?.organizer?.id}">${tekEventInstance?.organizer?.encodeAsHTML()}</g:link></td>

                        </tr>
                    
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="tekEvent.volunteers.label" default="Volunteers" /></td>
                            
                            <td valign="top" style="text-align: left;" class="value">
                                <ul>
                                <g:each in="${tekEventInstance.volunteers}" var="v">
                                    <li><g:link controller="tekUser"
                                                action="show"
                                                id="${v.id}">${v?.encodeAsHTML()}</g:link></li>
                                </g:each>
                                </ul>
                            </td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Sponsored by:</td>
                            
                            <td valign="top" style="text-align: left;" class="value">
                                <ul>
                                <g:each var="s" in="${tekEventInstance.sponsorships}" >
                                    <li><g:link controller="sponsorship" action="show" id="${s.id}">
                                        ${s.sponsor?.encodeAsHTML()}
                                    </g:link></li>
                                </g:each>
                                </ul>
                            </td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="tekEvent.tasks.label" default="Tasks" /></td>
                            
                            <td valign="top" style="text-align: left;" class="value">
                                <ul>
                                <g:each in="${tekEventInstance.tasks}" var="t">
                                    <li><g:link controller="task" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></li>
                                </g:each>
                                </ul>
                            </td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">
                                <g:message code="tekEvent.messages.label" default="Messages" />
                            </td>
                            
                            <td valign="top" style="text-align: left;" class="value">
                                <g:link action="list" controller="message" 
                                id="${tekEventInstance.id}">View Messages</g:link>
                            </td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="tekEvent.respondents.label" default="Respondents" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: tekEventInstance, field: "respondents")}</td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <g:hiddenField name="id" value="${tekEventInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
