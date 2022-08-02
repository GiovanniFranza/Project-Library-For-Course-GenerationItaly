﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="GestioneLibri.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Gestione Libri</title>

    <script type="text/javascript">
        $(document).ready(function () {
            $('#btnInserisci').click(function () {
                var url = '/Popups/Inserisci/Libri.aspx';
                var dialog = $('<iframe src="' + url + '" frameborder="0"></iframe>').appendTo('body');

                dialog.dialog({
                    modal: true,
                    title: 'Inserimento dati',
                    resizable: false,
                    width: 250,
                    height: 280,
                    overlay: {
                        opacity: 0.9,
                        background: 'black'
                    },

                    open: function (type, data) {
                        $(this).parent().appendTo('form');
                    }
                });

                return false;
            });

            $('#btnModifica').click(function () {
                var url = '/Popups/Modifica/Libri.aspx';
                var dialog = $('<iframe src="' + url + '" frameborder="0"></iframe>').appendTo('body');

                dialog.dialog({
                    modal: true,
                    title: 'Modifica dati',
                    resizable: false,
                    width: 250,
                    height: 280,
                    overlay: {
                        opacity: 0.9,
                        background: 'black'
                    },

                    open: function (type, data) {
                        $(this).parent().appendTo('form');
                    }
                });

                return false;
            });

            $('#btnElimina').click(function () {
                var url = '/Popups/Elimina/Libri.aspx';
                var dialog = $('<iframe src="' + url + '" frameborder="0"></iframe>').appendTo('body');

                dialog.dialog({
                    modal: true,
                    title: 'Elimina dati',
                    resizable: false,
                    width: 250,
                    height: 150,
                    overlay: {
                        opacity: 0.9,
                        background: 'black'
                    },

                    open: function (type, data) {
                        $(this).parent().appendTo('form');
                    }
                });

                return false;
            });
        });
    </script>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="div">
        <h4 class="titolo">GESTIONE LIBRI</h4>
        <asp:Button ID="btnAggiorna" runat="server" class="button-8" Text="Aggiorna Griglia" OnClick="btnAggiorna_Click" />
        <asp:Button runat="server" class="button-8" Text="Inserisci Libro" ID="btnInserisci" ClientIDMode="Static" />
        <asp:Button runat="server" class="button-8" Text="Modifica Libro" ID="btnModifica" ClientIDMode="Static" Enabled="False" />
        <asp:Button runat="server" class="button-8" Text="Elimina Libro" ID="btnElimina" ClientIDMode="Static" Enabled="False" />

        <br />
        <br />

        <asp:GridView runat="server" ID="grdLibri" class="griglia" AutoGenerateColumns="False" DataKeyNames="codLibro" OnSelectedIndexChanged="grdLibri_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="codLibro" HeaderText="codLibro" Visible="False" />
                <asp:BoundField DataField="titolo" HeaderText="Titolo" />
                <asp:BoundField DataField="autore" HeaderText="Autore" />
                <asp:BoundField DataField="genere" HeaderText="Genere" />
                <asp:CommandField ButtonType="Button" ControlStyle-CssClass="button-griglia" ShowSelectButton="True" />
            </Columns>
            <HeaderStyle />
            <HeaderStyle CssClass="headergrid" />
        </asp:GridView>
    </div>
</asp:Content>

