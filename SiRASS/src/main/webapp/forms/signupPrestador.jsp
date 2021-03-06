<input type="hidden" name="class" value="SignupPrestador" />
<div class="row">
	<div class="span6">
		<!-- Datos personales
		============================== -->
		<legend>Datos personales</legend>
		<div class="control-group">
			<label for="nombre" class="control-label">Nombre:</label>
			<div class="controls">
				<input type="text" name="nombre" value="" placeholder="Juan Carlos" />
			</div>
		</div>
		<div class="control-group">
	  		<label class="control-label" for="aPaterno">Apellido paterno:</label>
			<div class="controls">
				<input type="text" id="aPaterno" name="aPaterno" maxlength="15"
					placeholder="S&aacute;nchez" />
			</div>
		</div>
		<div class="control-group">
		  	<label class="control-label" for="aMaterno">Apellido materno:</label>
			<div class="controls">
				<input type="text" id="aMaterno" name="aMaterno" maxlength="15"
					placeholder="L&oacute;pez" />
			</div>
		</div>
		<div class="control-group">
			<label for="email" class="control-label">Email:</label>
			<div class="controls">
				<div class="input-prepend">
					<span class="add-on">
						<i class="icon-envelope"></i>
					</span><input type="text" id="email" name="email" style="width: 184px;"
						placeholder="john@doe.com" />
				</div>
			</div>
		</div>
		<div class="control-group">
			<label for="nacimiento" class="control-label">Fecha de nacimiento:</label>
			<div class="controls">
				<input type="text" id="nacimiento" name="nacimiento"
					placeholder="dd/mm/yyyy" class="input-small" />
				<span class="help-inline">dd/mm/yyyy</span>
			</div>
		</div>
		<div class="control-group">
		  	<label class="control-label" for="sexo">Sexo:</label>
			<div class="controls">
				<label class="radio inline">
					<input type="radio" id="sexo" name="sexo" value="M" checked="checked" />
						Masculino
				</label>
				<label class="radio inline">
					<input type="radio" name="sexo" value="F" />
		  				Femenino
				</label>
			</div>
		</div>
	</div> <!-- fin datos personales -->
	<div class="span6">
		<!-- Domicilio
		============================== -->
		<legend>Domicilio</legend>
		<div class="control-group">
			<label for="dCalle" class="control-label">Calle</label>
			<div class="controls">
				<input type="text" id="dCalle" name="dCalle" value="" placeholder="Calle"
					class="input-xlarge" />
			</div>
		</div>
		<div class="control-group">
			<label for="dNumInt" class="control-label">N&uacute;mero</label>
			<div class="controls form-inline">
				<input type="text" id="dNumInt" name="dNumInt" class="input-mini"
					placeholder="Exterior" />
				<input type="text" id="dNumExt" name="dNumExt" class="input-mini"
					placeholder="Interior" />
			</div>
		</div>
		<div class="control-group">
			<label class="control-label" for="dCP">C&oacute;digo postal:</label>
			<div class="controls">
				<input class="input-mini" type="text" id="dCP" name="dCP" maxlength="5"
					placeholder="#####" />
			</div>
		</div>
		<div class="control-group">
		  	<label class="control-label" for="dDelegacion">Del../Mun.:</label>
			<div class="controls">
				<input type="text" id="dDelegacion" name="dDelegacion" maxlength="20"
					placeholder="Delegaci&oacute;n o Municipio" />
			</div>
		</div>
		<div class="control-group">
		  	<label class="control-label" for="dColonia">Colonia:</label>
			<div class="controls">
				<input type="text" id="dColonia" name="dColonia" maxlength="20"
					placeholder="Colonia o barrio" />
			</div>
		</div>
		<div class="control-group">
	  		<label class="control-label" for="telCasa">Tel&eacute;fono:</label>
			<div class="controls">
				<input class="input-small" type="text" id="telCasa" name="telCasa" maxlength="8" placeholder="Casa" />
				Cel.
				<input class="input-small" type="text" id="telCel" name="telCel" maxlength="13" placeholder="Celular" />
			</div>
		</div>
	</div> <!-- fin domicilio -->
</div> <!-- fin row -->
<div class="row">
	<!-- Datos de usuario
	============================== -->
	<div class="span6">
		<legend>Informaci&oacute;n de usuario</legend>
		<div class="control-group">
			<label class="control-label" for="username">Nombre de usuario:</label>
			<div class="controls">
				<input type="text" id="username" name="username" maxlength="15"
					placeholder="Usuario [6-15 caracteres]" />
			</div>
		</div>
		<div class="control-group">
			<label class="control-label" for="password">Contrase&ntilde;a:</label>
			<div class="controls">
				<input type="password" id="password" name="password" maxlength="16"
					placeholder="Password [6-16 caracteres]" />
			</div>
		</div>					
		<div class="control-group">
			<label class="control-label" for="passwordVerif">Verificar contrase&ntilde;a:</label>
			<div class="controls">
				<input type="password" id="passwordVerif" name="passwordVerif" maxlength="16"
					placeholder="Repite tu password"/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label" for="difundir">Autorizo que mis datos sean difundidos:</label>
			<div class="controls">
				<label class="radio inline">
					<input type="radio" id="difundir" name="difundir" value="1" checked="checked" /> S&iacute;
				</label>
				<label class="radio inline">
					<input type="radio" name="difundir" value="0" /> No
				</label>
			</div>
		</div>
	</div> <!-- fin datos de usuario -->
</div> <!-- fin row -->
<div class="form-actions">
	<button type="submit" class="btn btn-success input-large">Registrar</button>
	<button type="reset" class="btn input-large">Limpiar</button>
</div>