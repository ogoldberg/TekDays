

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'tekEvent.label', default: 'TekEvent')}" />
        <title><g:message code="TekEvent List" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}">Home</a></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="New TekEvent" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                           
                            <g:sortableColumn property="name" title="${message(code: 'tekEvent.name.label', default: 'Name')}" />
                        
                            <g:sortableColumn property="city" title="${message(code: 'tekEvent.city.label', default: 'City')}" />
                        
                            <g:sortableColumn property="description" title="${message(code: 'tekEvent.description.label', default: 'Description')}" />
                        
                	    
                            <g:sortableColumn property="venue" title="${message(code: 'tekEvent.venue.label', default: 'Venue')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${tekEventInstanceList}" status="i" var="tekEventInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td>
                        <g:link action="show" id="${tekEventInstance.id}">
                              ${fieldValue(bean: tekEventInstance, field: "name")}
                        </g:link></td>
                        
                            <td>${fieldValue(bean: tekEventInstance, field: "city")}</td>
                        
                            <td>${fieldValue(bean: tekEventInstance, field: "description")}</td>
                        
                            <td>${fieldValue(bean: tekEventInstance, field: "venue")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${tekEventInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
