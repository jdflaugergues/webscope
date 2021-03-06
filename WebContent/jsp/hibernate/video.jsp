<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:simple_layout title="Liste des Vid�os">
	<jsp:attribute name="body_area">

	    <!-- Column Right-->
       <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">

          <!-- BreadCrumb -->
          <ol class="breadcrumb">
            <li><a href="${pageContext.request.contextPath}/jsp/hibernate/index.jsp">Accueil</a></li>
            <li class="active">Vid�os</li>
          </ol>

          <!-- Content -->
          <div class="content">
            <div class="container">

              <h3 id="q1">[ Vid�os ] <span class="label label-default">Liste des vid�os (films & reportages)</span></h3>
              

              <table class="table table-striped">
              	<thead>
              		<tr>
              			<th>Titre</th>
              			<th>Ann�e</th>
              		</tr>
              	</thead>
				 <c:forEach items="${requestScope.videos}" var="video">
					<tr>
						<td><c:out value="${video.titre}" /></td>
						<td><c:out value="${video.annee}" /></td>
					</tr>
				</c:forEach>
			  </table>

            </div> <!-- /container -->
          </div> <!-- /content -->


        </div><!-- Column Right-->

	</jsp:attribute>
</t:simple_layout>

<script>$('#videos').attr('class','active')</script>
