<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:simple_layout title="Par Lot" nav="requeteur" subnav="lot">
	<jsp:attribute name="body_area" >

	    <!-- Column Right-->
       <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">

          <!-- BreadCrumb -->
          <ol class="breadcrumb">
            <li><a href="${pageContext.request.contextPath}/jsp/requeteur/index.jsp">Accueil</a></li>
            <li class="active">Par Lot</li>
          </ol>

          <!-- Content -->
          <div class="content">
            <div class="container">

              <h3 id="q1">[ Lecture ] <span class="label label-default">Par Lot </span></h3>
              
              <p>Liste des films avec leurs r�les:</p>
			  	
			  	<table class="table table-striped">
              	<thead>
              		<tr>
              			<th>Titre</th>
              			<th>Ann�e</th>
              			<th>Roles</th>
              		</tr>
              	</thead>
					<c:forEach items="${films}" var="film">
						<tr>
							<td><c:out value="${film.titre}" /></td>
							<td><c:out value="${film.annee}" /></td>
							<td><c:forEach items="${film.roles}" var="role">
								<c:out value="${role.nom}" /><br>
							</c:forEach></td>
						</tr>
					</c:forEach>
				</table>


            </div> <!-- /container -->
          </div> <!-- /content -->


        </div><!-- Column Right-->

	</jsp:attribute>
</t:simple_layout>
