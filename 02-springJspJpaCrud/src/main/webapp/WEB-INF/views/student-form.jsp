<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="template"  tagdir="/WEB-INF/tags"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="spring" %>
<%@page isELIgnored="false" %>
<template:fragments title="home">
<jsp:attribute name="content">

    <div class="container-fluid">
      <div class="row justify-content-center text-center mt-2 mb-3">
          <div class="col-8">
               <spring:form action="studentSave" modelAttribute="studentmodel" method="post">
               
                <div class="form-group row">
                       <spring:hidden path="id" cssClass="form-control col-5"/>
                   </div>
               
                   <div class="form-group row">
                       <spring:label path="vorname" cssClass="col-form-label col-2">Vorname</spring:label>
                       <spring:input path="vorname" cssClass="form-control col-5"/>
                   </div>
                   
                     <div class="form-group row">
                       <spring:label path="nachname" cssClass="col-form-label col-2">Nachname</spring:label>
                       <spring:input path="nachname" cssClass="form-control col-5"/>
                   </div>
                   
                     <div class="form-group row">
                       <spring:label path="email" cssClass="col-form-label col-2">Email</spring:label>
                       <spring:input path="email" cssClass="form-control col-5"/>
                   </div>
                   
                     <div class="form-group row">
                       <spring:label path="prog_sprache" cssClass="col-form-label col-2">Prog.Sparache</spring:label>
                       <spring:select path="prog_sprache" cssClass="custom-select col-5">
                       <spring:options items="${listProg}"/>
                       </spring:select>                     
                   </div>
                   
                    <div class="form-group row">
                       <spring:label path="gender" cssClass="custom-form-label col-2">Gender</spring:label>
                       <div class="col-5">
	                       <div class="custom-control custom-radio custom-control-inline">
	                         <spring:radiobutton path="gender" id="radio1" name="radios" value="Frau"  cssClass="custom-control-input"/>
	                         <spring:label path="gender" for="radio1" cssClass="custom-control-label">Frau</spring:label>
	                       </div>
	                       
	                       <div class="custom-control custom-radio custom-control-inline">
	                         <spring:radiobutton path="gender" id="radio2" name="radios" value="Herr" cssClass="custom-control-input"/>
	                         <spring:label path="gender" for="radio2" cssClass="custom-control-label">Herr</spring:label>
	                       </div>
                       </div>
                   </div>
                   
                   <div class="form-group row">
                       <label class="col-2"></label>
                       <button type="submit" class="btn btn-success col-5">Anmelden</button>
                   </div>
                   
               </spring:form> 
          </div>
      </div>
   </div>

</jsp:attribute>

</template:fragments>