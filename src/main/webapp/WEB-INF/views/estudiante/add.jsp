<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<h2>Registrando a un Estudiante</h2>
  
    <form:form method="POST" modelAttribute="estudiante">
        <table>
            <tr>
                <td><label for="numeroControl">Número de Control: </label> </td>
                <td><form:input path="numeroControl" id="numeroControl"/></td>
                <td><form:errors path="numeroControl" cssClass="error"/></td>
            </tr>
            <tr>
                <td><label for="nombre">Nombre: </label> </td>
                <td><form:input path="nombre" id="nombre"/></td>
                <td><form:errors path="nombre" cssClass="error"/></td>
            </tr>
            <tr>
                <td><label for="apellidos">Apellidos: </label> </td>
                <td><form:input path="apellidos" id="apellidos"/></td>
                <td><form:errors path="apellidos" cssClass="error"/></td>
            </tr>         
            <tr>
                <td><label for="grupo">Grupo: </label> </td>
                <td><form:input path="grupo" id="grupo"/></td>
                <td><form:errors path="grupo" cssClass="error"/></td>
            </tr>         
            <tr>
                <td><label for="edad">Edad: </label> </td>
                <td><form:input path="edad" id="edad"/></td>
                <td><form:errors path="edad" cssClass="error"/></td>
            </tr>         
     
            <tr>
                <td colspan="3">
                    <c:choose>
                        <c:when test="${edit}">
                            <input type="submit" value="Modificar"/>
                        </c:when>
                        <c:otherwise>
                            <input type="submit" value="Registrar"/>
                        </c:otherwise>
                    </c:choose>
                </td>
            </tr>
        </table>
    </form:form>
    <br/>
    <br/>
    Regresar lista de estudiantes <a href="<c:url value='/estudiante/list'/>">Lista de estudiantes</a>