<%-- 
    Document   : admin
    Created on : 10-jul-2012, 16:16:52
    Author     : gomezhyuuga
--%>

<%@page import="skyforge.sirass.model.prestador.Inscripcion"%>
<%@page import="java.util.List"%>
<%@page import="skyforge.sirass.dao.prestador.InscripcionDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="/WEB-INF/jspf/head.jsp">
            <jsp:param name="title" value="Bienvenido Administrador" />
        </jsp:include>
    </head>
    <body>
        <!-- Navbar
	============================== -->
    <jsp:include page="../jspf/header.jsp" />
	<!-- Body
	============================== -->
	<div class="container content">
		<div class="row">
			<!-- Sidebar
			============================== -->
            <jsp:include page="../jspf/sidebar.jsp">
                <jsp:param name="active" value="nav-inscripciones" />
            </jsp:include>
			<!-- Contenido
			============================== -->
			<div class="span8 solid">
				<div class="page-header">
					<h1>Inscripciones</h1>
				</div>
				<p class="lead">Selecciona una opción para filtrar las inscripciones.</p>
				<div class="form-actions">
					<div class="btn-group" data-toggle="buttons-radio">
                        <a class="btn btn-primary" href="./">Esperando</a>
						<a class="btn btn-danger" href="./invalidas.jsp">Con errores</a>
						<a class="btn btn-success" href="./activas.jsp">En servicio</a>
						<a class="btn btn-warning active" href="#">Suspendida</a>
						<a class="btn btn-inverse" href="./canceladas.jsp">Cancelada</a>
						<a class="btn" href="./finalizadas.jsp">Finalizadas</a>
					</div>
				</div>
                <div id="registros">
                <%
                    InscripcionDAO idao = new InscripcionDAO();
                    List<Inscripcion> inscripciones = idao.getFewWithStatus(Inscripcion.SUSPENDIDA);
                    if (inscripciones == null || inscripciones.isEmpty()) {
                        out.print("<h1>Sin inscripciones</h1>");
                    } else {%>
                    <table class="table table-striped table-bordered">
						<thead>
							<tr>
								<th>Prestador</th>
                                <th class="span1">Tipo</th>
								<th>Programa</th>
                                <th style="width: 100px;">Acciones</th>
							</tr>
						</thead>
						<tbody>
                        <%  for (Inscripcion i : inscripciones) {
                            String nombre = "";
                            nombre = i.getPrestador().getNombre() + " ";
                            nombre += i.getPrestador().getaPaterno() + " ";
                            nombre += i.getPrestador().getaMaterno();
                            String tipo = "";
                            tipo = i.getTipo().getDescripcion();
                            String programa = "";
                            programa = i.getPrograma();
                            int id = i.getIdInscripcion();
                        %>
							<tr>
								<td><%= nombre %></td>
								<td><%= tipo %></td>
								<td><%= programa %></td>
								<td>
									<div class="btn-group">
										<a class="btn btn-success btn-mini"
                                           href="/SiRASS/Services?service=uInscripcionStat&id=<%=id%>&status=<%= Inscripcion.EN_SERVICIO %>">Reactivar</a>
										<a class="btn btn-success btn-mini dropdown-toggle" data-toggle="dropdown">
											<span class="caret"></span>
										</a>
										<ul class="dropdown-menu">
											<li>
												<a href="detalles.jsp?id=<%= id%>"><i class="icon-eye-open"></i>
													Revisar
												</a>
											</li>
											<li>
												<a href="/SiRASS/Services?service=uInscripcionStat&id=<%=id%>&status=<%= Inscripcion.CANCELADA %>"><i class="icon-remove"></i>
													Cancelar Servicio
												</a>
											</li>
										</ul>
									</div>
								</td>
							</tr>
                        <%}%>
						</tbody>
					</table>
                <%} %>
                </div>
			</div>
		</div>
	</div>
    <!-- Footer
	============================== -->
    <jsp:include page="/WEB-INF/jspf/footer.jsp" />
    </body>
</html>