

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:javascript library="prototype" />
        <g:set var="entityName" value="${message(code: 'message.label', default: 'Message')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton">
              <a class="home" href="${createLink(uri: '/')}">Home</a>
            </span>
            <span class="menuButton">
              <g:link class="create" action="create"
                  params='["event.id":"${event?.id}"]'>New Message
              </g:link>
            </span>
        </div>
      <div class="body">
        <h1>${event?.name} - Forum Messages</h1>
        <div id="messageList">
            <ul>
          <g:each in="${messageInstanceList}" var="messageInstance">
          <li>
            <g:remoteLink action="showDetail" id="${messageInstance?.id}"
                          update="details">
              ${messageInstance.author.fullName} - ${messageInstance.subject}
              </g:remoteLink>
              </li>
          </g:each></ul>
        </div>
        <h3>Message Details</h3>
        <div id="details">
          </div>
      </div>

    </body>
</html>
