<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="template"  tagdir="/WEB-INF/tags"%>
<%@page isELIgnored="false" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<template:fragments title="home">
<jsp:attribute name="content">

    <div class="container-fluid">
      <div class="row">
          <div class="col">
              <table class="table table-hover">
                  <tr>
                      <th>Id</th>
                      <th>Vorname</th>
                      <th>Nachname</th>
                      <th>Email</th>
                      <th>Prog.Sprache</th>
                      <th>Gender</th>
                      <th colspan="2">Action</th>
                  </tr>
                  <c:forEach items="${studentlist}" var="student">
                  <c:url value="delete" var="deletelink">
                    <c:param name="id" value="${student.id}"></c:param>
                  </c:url>
                  <c:url value="update" var="updatelink">
                    <c:param name="id" value="${student.id}"></c:param>
                  </c:url>
		                  <tr>
		                     <td>${student.id}</td>
		                     <td>${student.vorname}</td>
		                     <td>${student.nachname}</td>
		                     <td>${student.email}</td>
		                     <td>${student.prog_sprache}</td>
		                     <td>${student.gender}</td>
		                     <td><a href="${deletelink}" class="btn btn-danger">Delete</a></td>
		                     <td><a href="${updatelink}" class="btn btn-primary">Update</a></td>
		                  </tr>
		          </c:forEach>
                  
              </table>
          </div>
      </div>
   </div>

</jsp:attribute>

</template:fragments>