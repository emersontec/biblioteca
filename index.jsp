<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text-plain; charset=ISO-8859-1">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Formulario</title>
		<link rel="stylesheet" type="text/css" href="layout/css/layout_frontend.css">
		<link href="adicional/bootstrap/css/bootstrap.min.css" rel="stylesheet">
		
		<!-- HTML5 shim e Respond.js para suporte no IE8 de elementos HTML5 e media queries -->
		<!-- ALERTA: Respond.js não funciona se você visualizar uma página file:// -->
		<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->

		<!-- jQuery (obrigatário para plugins JavaScript do Bootstrap) -->
		<script src="adicional/js/jquery.min.js"></script>
		<!-- Inclui todos os plugins compilados (abaixo), ou inclua arquivos separadados se necessário -->
		<script src="adicional/bootstrap/js/bootstrap.min.js"></script>	
		
		<script type="text/javascript" src="adicional/js/jquery-2.1.3.js"></script>
		
		<script type="text/javascript" src="adicional/js/ajax.js"></script>
		<script type="text/javascript" src="adicional/js/jquery-ui.js"></script>
		
		<script type="text/javascript" src="adicional/index.js"></script>		

	</head>
	<body id="bgautenticacao">	
		<div id="cabecalho">
			<header >

			</header>
		</div>	
		     
		<div class="container">    
	        <div id="loginbox" style="margin-top:50px;" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">                    
	            <div class="panel panel-info" >
                    <div class="panel-heading">
                        <div class="panel-title">Conecte-se</div>
                        <div style="float:right; font-size: 80%; position: relative; top:-10px"><a data-toggle='modal' data-target='#esqueceuSenha'>Esqueceu sua senha?</a></div>
                    </div>     

                    <div style="padding-top:30px" class="panel-body" >

                        <div style="display:none" id="login-alert" class="alert alert-danger col-sm-12"></div>
                            
                        <form name="frmcontato" id="frmcontato" action="consultaLogin" method="post" onsubmit="return validacao()" class="form-horizontal" role="form">
                                    
                            <div style="margin-bottom: 25px" class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                <input id="login-username" type="text" class="form-control" name=txtlogin value="" placeholder="Digite seu Login ou E-mail">                                        
                            </div>
                                
                            <div style="margin-bottom: 25px" class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                <input id="login-password" type="password" class="form-control" name="pwdsenha" placeholder="Digite sua senha">
                            </div>

							<div class="form-group col-md-12">
								<div id="msg">
								<% String mensagem = (String) session.getAttribute("msg");
									if(mensagem != null){
										out.println(mensagem);
									}else{
										out.println("Entre com seu usuário e senha!");
									}
								%>
								</div>
							</div>

                            <div class="form-group col-md-12">
                            	<div class="modal-footer">
                            		 <button type="submit" class="btn btn-primary btn-mini" name="btnentrar">Entrar</button> <button type="reset" class="btn btn-default">Limpar</button>
                           		 </div>
                            </div>
                        </form>     
					</div>                     
				</div>  
	        </div>
	    </div>
	    
	    <div class="modal fade" id="esqueceuSenha" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<form name="frmformulario" id="esqueceuSenha" action="consultaLogin" method="post" data-toggle="validator" role="form">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
							<h4 class="modal-title" id="myModalLabel">Recuperação de Senha</h4>
						</div>
						<div class="modal-body">
							<div class="row">
								<div class="div-form"> 
									<div class="form-group col-md-12">
										<label for="inputemail" class="control-label">* E-mail</label>
										<input id="emailEdit" class="form-control" name="email" type="text" maxlength="78" placeholder="Digite seu E-mail" /> 
									</div>
									</div>	
								<div class="col-md-12 form-group">
									<div id="divcheck"></div>
								</div>
							</div>
						</div>
						<input name="id" id="idUsuarioEdit" type="hidden" />
						<div class="modal-footer">
							 <div class="form-group col-md-12">
                            	<button type="submit" class="btn btn-primary btn-mini" name="btnentrar">Enviar</button> <button type="reset" class="btn btn-default">Limpar</button>
                            </div>
                        </div>
					</div>
				</form>
			</div>
		</div>
 	
		<footer>
			&copy; 2017 Emerson Amâncio. Todos os Direitos Reservados.
		</footer>
	</body>
</html>