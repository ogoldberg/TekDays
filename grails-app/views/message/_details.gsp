<!--
  To change this template, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Sample title</title>
  </head>
  <body>
    <div class="dialog">
      <table>
        


          <tr class="prop">
            <td valign="top" class="name"><g:message code="message.subject.label" default="Subject" /></td>

        <td valign="top" class="value">${fieldValue(bean: messageInstance, field: "subject")}</td>

        </tr>

        <tr class="prop">
          <td valign="top" class="name"><g:message code="message.content.label" default="Content" /></td>

        <td valign="top" class="value">${fieldValue(bean: messageInstance, field: "content")}</td>

        </tr>


        <tr class="prop">
          <td valign="top" class="name"><g:message code="message.author.label" default="Author" /></td>

        <td valign="top" class="value">
          <g:link controller="tekUser" action="show" id="${messageInstance?.author?.id}">
                ${messageInstance?.author?.encodeAsHTML()}
          </g:link>
        </td>

        </tr>

      </table>
    </div>
    <div class="buttons">
      <span class="menuButton">
        <g:link class="create" action="reply" id="${messageInstance?.id}">
          Reply
        </g:link>
      </span>
    </div>
 </body>
</html>
