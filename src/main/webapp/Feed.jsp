<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>

<div class="w3-container">

    <h4 class="w3-text-theme">Timeline</h4>

    <c:if test="${sessionScope.user.role == 'admin'}">
        <p><b>Mode Admin</b> - pots eliminar posts i bannejar usuaris.</p>
    </c:if>

    <div class="w3-card w3-margin-bottom">
        <div class="w3-container w3-padding">
            <p><b>@anna_bcn</b> <small>· 2h ago</small>
            <c:if test="${sessionScope.user.role == 'admin'}">
                <button class="w3-button w3-small w3-red w3-right">Ban</button>
            </c:if>
            </p>
            <p>Busco companya de pis a Gràcia, Barcelona. Habitació disponible a partir de juny, 450€/mes inclosos. Pis de 3 habitacions, molt lluminós!</p>
            <hr>
            <c:choose>
                <c:when test="${sessionScope.user != null}">
                    <button class="w3-button w3-small">❤ 5</button>
                    <button class="w3-button w3-small">💬 2</button>
                    <c:if test="${sessionScope.user.role == 'admin'}">
                        <button class="w3-button w3-small w3-red w3-right">Delete Post</button>
                        <button class="w3-button w3-small w3-orange w3-right">Delete Comments</button>
                    </c:if>
                    <c:if test="${sessionScope.user.name == 'anna_bcn'}">
                        <button class="w3-button w3-small w3-right">🗑</button>
                    </c:if>
                </c:when>
                <c:otherwise>
                    <small><a class="menu" href="Login">Log in</a> per reaccionar o comentar</small>
                </c:otherwise>
            </c:choose>
        </div>
    </div>

</div>
