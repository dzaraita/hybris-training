<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 1/19/2021
  Time: 10:05 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="template" tagdir="/WEB-INF/tags/responsive/template" %>
<%@taglib prefix="sprinf" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="cms" uri="http://hybris.com/tld/cmstags" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="product" tagdir="/WEB-INF/tags/responsive/product" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<spring:htmlEscape defaultHtmlEscape="true"/>

<template:page pageTitle="${pageTitle}">

    <div class="container">
        <div class="row">
            <div class="training">
                <div class="middle-content">
                    <cms:pageSlot position="MiddleContent" var="comp" element="div" class="errorNotPageMiddle">
                        <cms:component component="${comp}" element="div" class="errorNotFoundPageMiddle-component"/>
                    </cms:pageSlot>
                </div>
                <div class="bottom-content">
                    <cms:pageSlot position="BottomContent" var="comp" element="div" class="errorNotFoundPageBottom">
                        <cms:component component="${comp}" element="div" class="errprNotFoundPageBottom-component"/>
                    </cms:pageSlot>
                </div>
            </div>
            <c:forEach items="${product}" var="product">
                <div class="training-product-grid">
                    <c:url value="${product.url}" var="productUrl"/>
                    <a class="thumb" href="${fn:escapeXml(productUrl)}" title="${fn:escapeXml(product.name)}">
                        <product:productPrimaryImage product="${product}" format="product"/>
                    </a>
                    <div class="training-label">
                        <span>${product.code}</span>
                        <span>${product.name}</span>
                        <span>${product.material}</span>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</template:page>