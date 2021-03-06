<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:simple_layout title="Films Artiste">
	<jsp:attribute name="body_area"> %>

	    <!-- Column Right-->
       <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">

          <!-- BreadCrumb -->
          <ol class="breadcrumb">
            <li><a href="${pageContext.request.contextPath}/jsp/hibernate/index.jsp">Accueil</a></li>
            <li class="active">Films Artiste</li>
          </ol>

          <!-- Content -->
          <div class="content">
            <div class="container">

              <h3 id="q1">[ Films Artiste ] <span class="label label-default">Lecture des films</span></h3>
              

              <table class="table table-striped">
              	<thead>
              		<tr>
              			<th>Film</th>
              			<th>Artiste</th>
              		</tr>
              	</thead>
				 <c:forEach items="${requestScope.films}" var="film">
					<tr>
						<td><c:out value="${film.titre}" /></td>
						<td><c:out value="${film.realisateur.prenom} ${film.realisateur.nom}" /></td>
					</tr>
				</c:forEach>
			  </table>

            </div> <!-- /container -->
          </div> <!-- /content -->


        </div><!-- Column Right-->


	</jsp:attribute>
</t:simple_layout>

<script>$('#filmsartiste').attr('class','active')</script>
