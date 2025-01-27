﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frm_facturacion.aspx.cs" Inherits="prj_architecture_p2.View.Facturacion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Ciudad</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js" integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V" crossorigin="anonymous"></script>
</head>
<body>
    <div id="menu">
        <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
            <div class="container-fluid">
                <a class="navbar-brand" href="#">Architecture Software</a>
                <div class="collapse navbar-collapse" id="collapsibleNavbar">
                    <ul class="navbar-nav">
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown">Facturacion</a>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="frm_cliente.aspx">Cliente</a></li>
                                <li><a class="dropdown-item" href="frm_ciudad.aspx">Ciudad</a></li>
                                <li><a class="dropdown-item" href="frm_facturacion.aspx">Facturacion </a></li>
                                <li><a class="dropdown-item" href="frm_reporteFacturacion.aspx">Reporte </a></li>
                            </ul>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown">Cuentas por Cobrar</a>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="#">Cobrador</a></li>
                                <li><a class="dropdown-item" href="#">Forma de Pago</a></li>
                                <li><a class="dropdown-item" href="#">Compleja </a></li>
                            </ul>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown">Bancos</a>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="#">Tipo transacción</a></li>
                                <li><a class="dropdown-item" href="#">Cuenta bancaria</a></li>
                                <li><a class="dropdown-item" href="#">Compleja </a></li>
                            </ul>
                        </li>
                    </ul>
                    <ul class="navbar-nav ms-auto py-4 py-lg-0">
                        <asp:Label ID="txt_server" runat="server" class="nav-link px-lg-3 py-3 py-lg-4"></asp:Label>
                    </ul>
                </div>
            </div>
        </nav>
    </div>
    
    <form id="form1" runat="server">
        <div class="container">
            <h1 class="label label-default mt-5">FACTURACION COMPLEJA </h1>
            <hr />
            <br />
            <div class="row">
                <div class="col">
                    <asp:Label runat="server" class="">Numero Factura</asp:Label>
                    <asp:TextBox ID="txt_id" runat="server" class="form-control"></asp:TextBox>
                    <br />
                    <asp:Label runat="server" class="">Cliente</asp:Label>
                    <asp:DropDownList ID="cmb_client" runat="server" class="form-control"></asp:DropDownList>
                    <br />
                    <asp:Label ID="Label1" runat="server" Text="Fecha" class="form-label"></asp:Label>
                    <asp:TextBox ID="txt_date_fact" runat="server" class="form-control" placeholder="dd/mm/yyyy"></asp:TextBox>
                    <br />
                    <asp:Label runat="server" class="">Ciudad</asp:Label>
                    <asp:DropDownList ID="cmb_city" runat="server" class="form-control"></asp:DropDownList>
                    <br />
                    <div class="row" >
                        <div class="col">
                            <asp:Button ID="btn_add" runat="server" Text="Registrar Factura" OnClick="btn_addClick" class="btn btn-success" />
                        </div>
                        <div class="col">
                            <asp:Button ID="btn_update" runat="server" Text="Actualizar Datos" OnClick="btn_updateClick" class="btn btn-info" />
                        </div>
                        <div class="col">
                            <asp:Button ID="btn_delete" runat="server" Text="Eliminar Factura" OnClick="btn_deleteClick" class="btn btn-danger" />
                        </div>
                        <div class="col">
                            <asp:Button ID="btn_find" runat="server" Text="Buscar Factura" OnClick="btn_findClick" class="btn btn-primary" />
                        </div>
                    </div>
                    <br />
                    <br />
                    <asp:Label ID="txt_mensaje" runat="server" CssClass="h4" ></asp:Label>
                    <asp:Label ID="txt_date" runat="server"></asp:Label>
                </div>
                <div class="col">
                    <h3>Articulos</h3>
                    <asp:Label runat="server" class="">Ciudad</asp:Label>
                    <asp:DropDownList ID="cmb_products" runat="server" class="form-control" AutoPostBack="True" OnSelectedIndexChanged="cmb_products_SelectedIndexChanged"></asp:DropDownList>
                    <br />
                    <asp:Label runat="server" class="">Cantidad</asp:Label>
                    <asp:TextBox ID="txt_cantidad" runat="server" class="form-control" TextMode="Number">0</asp:TextBox>
                    <br />
                    <div class="row">
                        <div class="col">
                            <asp:Label runat="server">Precio Unitario: $</asp:Label>
                            <asp:Label ID="txt_unitPrice" runat="server"></asp:Label>
                            <br />
                            <br />
                            <asp:Button ID="btn_addProduct" runat="server" Text="Agregar al Carrito" OnClick="btn_addProductClick" class="btn btn-secondary" />
                        </div>
                        <div class="col">
                            <asp:Label runat="server">Total: $</asp:Label>
                            <asp:Label ID="txt_priceTotal" runat="server"></asp:Label>
                            <br />
                            <br />
                            <asp:Label ID="txt_smsProduct" runat="server"></asp:Label>
                        </div>
                    </div>
                    <br />
                    <h4 class="text-center">Carrito de Compras</h4>
                    <br />
                    <!-- DISPLAY TABLE OF PRODUCTS -->
                    <asp:GridView ID="grdProducts" runat="server" AutoGenerateColumns="false" CssClass="table table-striped"
                        DataKeyNames="NOMBRE_ARTICULO,CANTIDAD_DETFAC,PRECIO_DETFAC">
                        <Columns>
                            <asp:BoundField HeaderText="Articulo" DataField="NOMBRE_ARTICULO" />
                            <asp:BoundField HeaderText="Cantidad" DataField="CANTIDAD_DETFAC" />
                            <asp:BoundField HeaderText="Precio Total" DataField="PRECIO_DETFAC" />
                        </Columns>
                    </asp:GridView>
                    <br />
                    <div class="row">
                        <div class="col-8">
                            <asp:Label class="h5" runat="server">Precio Total de Factura:</asp:Label>
                        </div>
                        <div class="col-4">
                            <asp:Label class="h4" ID="txt_priceTotalFact" runat="server"></asp:Label>
                        </div>
                    </div>
                    <br />
                    <br />
                    <div class="text-center">
                        <asp:Label class="h6" ID="Label2" runat="server"> Click para comprar ! </asp:Label>
                        <br /><br />
                        <asp:Button ID="btn_sendFact" runat="server" Text="Comprar" OnClick="btn_sendFactClick" class="form-control btn btn-warning " />
                    </div>

                </div>
            </div>
        </div>

        <div class="container my-5">
            <div class="row text-center">
                <h2>Historico de Facturas Registradas</h2>
            </div>
            <div class="row mt-3">
                <asp:GridView ID="grdFacts" runat="server" AutoGenerateColumns="false" CssClass="table table-striped"
                    DataKeyNames="NUMERO_CABECERA,NOMBRE_CLIENTE,NOMBRE_CIUDAD,FECHA_CABECERA,VALOR_CABECERA">
                    <Columns>
                        <asp:BoundField HeaderText="Numero Factura" DataField="NUMERO_CABECERA" />
                        <asp:BoundField HeaderText="Cliente" DataField="NOMBRE_CLIENTE" />
                        <asp:BoundField HeaderText="Ciudad" DataField="NOMBRE_CIUDAD" />
                        <asp:BoundField HeaderText="Fecha" DataField="FECHA_CABECERA" />
                        <asp:BoundField HeaderText="Precio Total Factura" DataField="VALOR_CABECERA" />
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </form>
</body>
</html>
