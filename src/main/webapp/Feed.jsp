<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>

<div class="w3-container">

    <c:if test="${sessionScope.user != null}">
        <div class="w3-card w3-margin-bottom w3-padding" style="display:flex; align-items:center; justify-content:space-between;">
            <span class="w3-text-grey">What's on your mind, <strong>${sessionScope.user.firstName}</strong>?</span>
            <a class="menu w3-button w3-theme w3-small" href="PublishPost">
                <i class="fa fa-pencil"></i> New Post
            </a>
        </div>
    </c:if>

    <h4 class="w3-text-theme"><i class="fa fa-list"></i> Timeline</h4>

    <div class="w3-card w3-margin-bottom">
        <div class="w3-container w3-padding">
            <div style="display:flex; align-items:center; gap:10px; margin-bottom:8px">
                <i class="fa fa-user-circle fa-2x w3-text-theme"></i>
                <div>
                    <strong>@anna_bcn</strong>
                    <span class="w3-text-grey w3-small"> · 2h ago</span>
                </div>
            </div>
            <p>Busco companya de pis a Gràcia, Barcelona. Habitació disponible a partir de juny, 450€/mes inclosos. Pis de 3 habitacions, molt lluminós!</p>
            <div class="w3-border-top w3-padding-small" style="margin-top:8px">
                <c:choose>
                    <c:when test="${sessionScope.user != null}">
                        <button class="w3-button w3-small w3-hover-red"><i class="fa fa-heart-o"></i> 5</button>
                        <button class="w3-button w3-small w3-hover-light-blue"><i class="fa fa-comment-o"></i> 2</button>
                        <c:if test="${sessionScope.user.name == 'anna_bcn'}">
                            <button class="w3-button w3-small w3-hover-red w3-right"><i class="fa fa-trash"></i></button>
                        </c:if>
                    </c:when>
                    <c:otherwise>
                        <span class="w3-text-grey w3-small">
                            <a class="menu" href="Login">Log in</a> to react or comment
                        </span>
                    </c:otherwise>
                </c:choose>
            </div>
        </div>
    </div>

</div>
