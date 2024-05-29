<%-- 
    Document   : registro
    Created on : 27/05/2024, 2:09:37 p. m.
    Author     : lizbe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>La granja</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link  type="text/css" href="./public/styles/style.css" rel="stylesheet">
        <link  type="text/css" href="./public/styles/div.css" rel="stylesheet">
        <script defer src="./public/scripts/script.js"></script>
    </head>
    <body>
        <div id="inicio">
            <h1 id="tituloInicio">INMOBILIARIA LA GRANJA</h1>
            <button id="btUsuario"  onclick="mostrar('ingresoUsuarioPrincipal', 'inicio')">
                <img src="public/images/usuario.png" id="imagenUsuario" /></button> <br/><br/>
            <div id="botones1">
                <button class="btGeneral" id="bnInicialCompra" onclick="mostrar('compra', 'inicio')">Compra inmueble</button> <br/><br/>
                <button class="btGeneral" id="bnInicialVenta" onclick="mostrar('ingresoUsuarioVenta', 'inicio')">Venta inmueble</button> <br/><br/>
                <button class="btGeneral" id="bnInicialSubasta" onclick="mostrar('pantallaSubasta', 'inicio')">Subastas</button> <br/>
            </div>
        </div>


        <div id="ingresoUsuarioPrincipal">
            <h1 class="titulosIngreso">Ingreso</h1>
            <div id="botones2">
                <button class="btGeneral" onclick="mostrar('ingresoPrincipal', 'ingresoUsuarioPrincipal')">Ingresar</button> <br/> <br/><br/>
                <button class="btGeneral" onclick="mostrar('crearUsuarioPrincipal', 'ingresoUsuarioPrincipal')">Registrar</button> <br/> <br/><br/>
                <button class="btGeneral" onclick="mostrar('ingresoDatos', 'ingresoUsuarioPrincipal')">Datos general</button> <br/><br/><br/>
                <button class="btAtras" onclick="mostrar('inicio', 'ingresoUsuarioPrincipal')">
                    <img src="public/images/atras.png" class="imagenAtras" />
                </button>
            </div>
        </div>
        <div id="ingresoPrincipal">
            <h1 class="titulosIngreso">Ingrese sus datos</h1>

            <div id="cajon1">
                <h1 class="titulos3">Usuario</h1><br/>
                <input type="text" class="inputDatos"><br/>
                <h1 class="titulos3">Contraseña</h1><br/>
                <input type="number" class="inputDatos" min="1"><br/>
            </div>
            <button class="btGeneral" onclick="mostrar('registro', 'ingresoPrincipal')">Continuar</button><br/>
            <div id="botones3">
                <button class="btAtras" onclick="mostrar('ingresoUsuarioPrincipal', 'ingresoPrincipal')">
                    <img src="public/images/atras.png" class="imagenAtras" />
                </button>
                <button class="btAtras" onclick="mostrar('inicio', 'ingresoPrincipal')">
                    <img src="public/images/casa.png" class="imagenAtras" />
                </button>
            </div>
        </div>
        <div id="crearUsuarioPrincipal">
            <h1 class="titulosIngreso">Crear usuario prueba</h1>
            <form id="crearUsuarioForm" method="Post" action="formulario-registro">
                <h1 class="titulos3">Primer nombre</h1>
                <input type="text" class="inputDatos" name="primer_nombre">
                <h1 class="titulos3">Primer apellido</h1>
                <input type="text" class="inputDatos" name="primer_apellido">
                <h1 class="titulos3">Cédula</h1>
                <input type="text" class="inputDatos" name="documento">
                <h1 class="titulos3">Crea un usuario</h1>
                <input type="text" class="inputDatos" name="usuario">
                <h1 class="titulos3">Contraseña</h1>
                <input type="text" class="inputDatos" name="contrasenha">
                <button class="btGeneral" onclick="mostrar('registro', 'crearUsuarioPrincipal')"type="submit">Registrar</button>
            </form>
            <br/> 
            <button class="btAtras" onclick="mostrar('ingresoUsuarioPrincipal', 'crearUsuarioPrincipal')">
                <img src="public/images/atras.png" class="imagenAtras" />
            </button>
        </div>
        <div id="ingresoDatos">
            <h1 class="titulosIngreso">Usuario general</h1>
            <h1 class="titulos3">Usuario</h1>
            <input type="text" class="inputDatosUsuario">
            <h1 class="titulos3">Contraseña</h1>
            <input type="number" class="inputDatosUsuario" min="1">
            <button class="btGeneral" onclick="mostrar('general', 'ingresoDatos')">Continuar</button>
            <button class="btAtras" onclick="mostrar('ingresoUsuarioPrincipal', 'ingresoDatos')">
                <img src="public/images/atras.png" class="imagenAtras" />
            </button>

        </div>

        <div id="registro">
            <h1 class="titulos3">Usuario</h1>
            <div>xxx</div>
            <div>xxxxx</div>
            <button class="btAtras" onclick="mostrar('ingresoUsuarioPrincipal', 'registro')">
                <img src="public/images/atras.png" class="imagenAtras" />
            </button>
        </div>
        <div id="general">
            <h1 class="titulos3">Valor recaudado comisiones</h1>
            <div>xxx</div>
            <h1 class="titulos3">Valor recaudado multas</h1>
            <div>xxx</div>
            <button class="btAtras" onclick="mostrar('inicio', 'general')">
                <img src="public/images/casa.png" class="imagenAtras" />
            </button>
        </div>


        <div id="compra"> 
            <h1 class="Titulos2">Compra inmueble</h1>
            <button class="botonesTipoCompra" id="bnCasa" onclick="mostrar('casas', 'compra')">Casas</button>
            <button class="botonesTipoCompra" id="bnApto" onclick="mostrar('aptos', 'compra')">Apartamentos</button>
            <button class="botonesTipoCompra" id="bnEstudio" onclick="mostrar('estudios', 'compra')">Estudios</button>
            <button class="botonesTipoCompra" id="bnTerreno" onclick="mostrar('terrenos', 'compra')">Terrenos</button>
            <button class="btAtras" onclick="mostrar('inicio', 'compra')">
                <img src="public/images/atras.png" class="imagenAtras" />
            </button>
        </div> 

        <div id="inmbuebles">
            <div id="casas">
                <h1 class="titulos3">Oferta de casas</h1>
                <h1 class="titulos3">Inmobiliaria La granja</h1>
                <div>xxx</div>
                <button class="comprar" onclick="mostrar('ingresoUsuario', 'casas')">Comprar</button>
                <button class="btAtras" onclick="mostrar('compra', 'casas')">
                    <img src="public/images/atras.png" class="imagenAtras" />
                </button>
                <button class="btAtras" onclick="mostrar('inicio', 'casas')">
                    <img src="public/images/casa.png" class="imagenAtras" />
                </button>
            </div>
            <div id="aptos">
                <h1 class="titulos3">Oferta de apartamentos</h1>
                <h1 class="titulos3">Inmobiliaria La granja</h1>
                <div>xxx</div>
                <button class="comprar" onclick="mostrar('ingresoUsuario', 'aptos')">Comprar</button>
                <button class="btAtras" onclick="mostrar('compra', 'aptos')">
                    <img src="public/images/atras.png" class="imagenAtras" />
                </button>
                <button class="btAtras" onclick="mostrar('inicio', 'aptos')">
                    <img src="public/images/casa.png" class="imagenAtras" />
                </button>
            </div>
            <div id="estudios">
                <h1 class="titulos3">Oferta de estudios</h1>
                <h1 class="titulos3">Inmobiliaria La granja</h1>
                <div>xxx</div>
                <button class="comprar" onclick="mostrar('ingresoUsuario', 'estudios')">Comprar</button>
                <button class="btAtras" onclick="mostrar('compra', 'estudios')">
                    <img src="public/images/atras.png" class="imagenAtras" />
                </button>
                <button class="btAtras" onclick="mostrar('inicio', 'estudios')">
                    <img src="public/images/casa.png" class="imagenAtras" />
                </button>
            </div>
            <div id="terrenos">
                <h1 class="titulos3">Oferta de terrenos</h1>
                <h1 class="titulos3">Inmobiliaria La granja</h1>
                <div>xxx</div>
                <button class="comprar" onclick="mostrar('ingresoUsuario', 'terrenos')">Comprar</button>
                <button class="btAtras" onclick="mostrar('compra', 'terrenos')">
                    <img src="public/images/atras.png" class="imagenAtras" />
                </button>
                <button class="btAtras" onclick="mostrar('inicio', 'terrenos')">
                    <img src="public/images/casa.png" class="imagenAtras" />
                </button>
            </div>
        </div>

        <div class="usuario">
            <div id="ingresoUsuario">
                <h1 class="titulosIngreso">Ingreso</h1>
                <button class="btGeneral" onclick="mostrar('ingreso', 'ingresoUsuario')">Ingresar</button>
                <button class="btGeneral" onclick="mostrar('crearUsuario', 'ingresoUsuario')">Registrar</button>
                <button class="btAtras" onclick="mostrar('compra', 'ingresoUsuario')">
                    <img src="public/images/atras.png" class="imagenAtras" />
                </button>
                <button class="btAtras" onclick="mostrar('inicio', 'ingresoUsuario')">
                    <img src="public/images/casa.png" class="imagenAtras" />
                </button>
            </div>
            <div id="ingreso">
                <h1 class="titulosIngreso">Ingrese sus datos</h1>
                <h1 class="titulos3">Usuario</h1>
                <input type="text" class="inputDatosUsuario">
                <h1 class="titulos3">Contraseña</h1>
                <input type="number" class="inputDatosUsuario" min="1">
                <button class="btGeneral" onclick="mostrar('facturacion', 'ingreso')">Continuar</button>
                <button class="btAtras" onclick="mostrar('ingresoUsuario', 'ingreso')">
                    <img src="public/images/atras.png" class="imagenAtras" />
                </button>
                <button class="btAtras" onclick="mostrar('inicio', 'ingreso')">
                    <img src="public/images/casa.png" class="imagenAtras" />

            </div>
            <div id="crearUsuario">
                <h1 class="titulosIngreso">Crear usuario</h1>

                <h1 class="titulos3">Primer nombre</h1>
                <input type="text" class="inputDatos">
                <h1 class="titulos3">Primer apellido</h1>
                <input type="text" class="inputDatos">
                <h1 class="titulos3">Cédula</h1>
                <input type="text" class="inputDatos">
                <h1 class="titulos3">Crea un usuario</h1>
                <input type="text" class="inputDatos">
                <h1 class="titulos3">Contraseña</h1>
                <input type="text" class="inputDatos">
                <br/> 
                <button class="btGeneral" onclick="mostrar('facturacion', 'crearUsuario')">Registrar</button>
                <button class="btAtras" onclick="mostrar('ingresoUsuario', 'crearUsuario')">
                    <img src="public/images/atras.png" class="imagenAtras" />
                </button>
                <button class="btAtras" onclick="mostrar('inicio', 'crearUsuario')">
                    <img src="public/images/casa.png" class="imagenAtras" />
            </div>

        </div>

        <div id="facturacion">
            <h1 class="Titulos2">Facturación</h1>
            <h1 class="Titulos3">Costo inmueble</h1>
            <div>xxx</div>
            <h1 class="Titulos3">Impuestos</h1>
            <div>xxx</div>
            <h1 class="Titulos3">Costo venta</h1>
            <div>xxx</div>
            <h1 class="Titulos3">Precio total</h1>
            <div>xxx</div>
            <button class="btGeneral"onclick="mostrar('cierreCompra', 'facturacion')">Comprar</button>
            <button class="btAtras" onclick="mostrar('inicio', 'facturacion')">
                <img src="public/images/casa.png" class="imagenAtras" />
        </div>
        <div id="cierreCompra">
            <h1 class="Titulos2">¡COMPRA EXITOSA!</h1>
            <p class="parrafos">Recuerde que tiene un plazo de 72 horas para realizar el pago con el banco asociado, de lo contrario generará una multa por incumpliendo</p>
            <button class="btAtras" onclick="mostrar('inicio', 'cierreCompra')">
                <img src="public/images/casa.png" class="imagenAtras" />
        </div>



        <div class="usuario">
            <div id="ingresoUsuarioVenta">
                <h1 class="titulosIngreso">Ingreso</h1>
                <button class="btGeneral" onclick="mostrar('ingresoVenta', 'ingresoUsuarioVenta')">Ingresar</button>
                <button class="btGeneral" onclick="mostrar('crearUsuarioVenta', 'ingresoUsuarioVenta')">Registrar</button>
                <button class="btAtras" onclick="mostrar('inicio', 'ingresoUsuarioVenta')">
                    <img src="public/images/casa.png" class="imagenAtras" />
            </div>
            <div id="ingresoVenta">
                <h1 class="titulosIngreso">Ingrese sus datos</h1>
                <h1 class="titulos3">Usuario</h1>
                <input type="text" class="inputDatosUsuario">
                <h1 class="titulos3">Contraseña</h1>
                <input type="number" class="inputDatosUsuario" min="1">
                <button class="btGeneral" onclick="mostrar('venta', 'ingresoVenta')">Continuar</button>
                <button class="btAtras" onclick="mostrar('ingresoUsuarioVenta', 'ingresoVenta')">
                    <img src="public/images/atras.png" class="imagenAtras" />
                </button>
                <button class="btAtras" onclick="mostrar('inicio', 'ingresoVenta')">
                    <img src="public/images/casa.png" class="imagenAtras" />
            </div>
            <div id="crearUsuarioVenta">
                <h1 class="titulosIngreso">Crear usuario</h1>

                <h1 class="titulos3">Primer nombre</h1>
                <input type="text" class="inputDatos">
                <h1 class="titulos3">Primer apellido</h1>
                <input type="text" class="inputDatos">
                <h1 class="titulos3">Cédula</h1>
                <input type="text" class="inputDatos">
                <h1 class="titulos3">Crea un usuario</h1>
                <input type="text" class="inputDatos">
                <h1 class="titulos3">Contraseña</h1>
                <input type="text" class="inputDatos">
                <br/> 
                <button class="btGeneral" onclick="mostrar('venta', 'crearUsuarioVenta')">Registrar</button>
                <button class="btAtras" onclick="mostrar('ingresoUsuarioVenta', 'crearUsuarioVenta')">
                    <img src="public/images/atras.png" class="imagenAtras" />
                </button>
                <button class="btAtras" onclick="mostrar('inicio', 'crearUsuarioVenta')">
                    <img src="public/images/casa.png" class="imagenAtras" />
            </div>


            <div id="venta">
                <h1 class="Titulos2">Venta inmueble</h1>
                <h1 class="Titulos3">Datos del inmueble</h1>
                <p class="datos">Mátricula del inmueble</p>
                <input type="number" class="inputDatos" min="1">
                <br/>
                <label for="opciones">Tipo:</label>
                <select id="tipos">
                    <option value="opcion1">Casa</option>
                    <option value="opcion2">Apartamento</option>
                    <option value="opcion3">Estudio</option>
                    <option value="opcion4">Terreno</option>
                </select>
                <p class="datos">Pais</p>
                <input type="text" class="inputDatos">
                <p class="datos">Direccion</p>
                <input type="text" class="inputDatos">
                <p class="datos">Precio</p>
                <input type="text" class="inputDatos">
                <br/>
                <button onclick="mostrar('cierreOferta', 'venta')">Ofertar</button>
                <button class="btAtras" onclick="mostrar('inicio', 'venta')">
                    <img src="public/images/casa.png" class="imagenAtras" />
            </div>

            <div id="cierreOferta">
                <h1 class="Titulos2">OFERTA GENERADA CON ÉXITO</h1>
                <button class="btAtras" onclick="mostrar('inicio', 'cierreOferta')">
                    <img src="public/images/casa.png" class="imagenAtras" />
            </div>

            <div >
                <div id="pantallaSubasta">
                    <h1 class="Titulos2">SUBASTAS</h1>
                    <div>xxxxxxxx</div>
                    <button>Información</button>
                    <button class="btAtras" onclick="mostrar('inicio', 'pantallaSubasta')">
                        <img src="public/images/casa.png" class="imagenAtras" />
                </div>

                <div id="subastaDetalladaA"></div>

            </div>
    </body>
</html>
