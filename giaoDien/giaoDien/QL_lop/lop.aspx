<%@ Page Title="" Language="C#" MasterPageFile="~/formHome.Master" AutoEventWireup="true" CodeBehind="lop.aspx.cs" Inherits="giaoDien.QL_lop.lop" %>

<asp:Content ID="Content5" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="ContentHome" runat="server">
    <h3 style="text-align:center;">Quản lý lớp</h3>
    <table class="auto-style1">
        <tr>
            <td class="auto-style3" style="text-align: center;">
                <asp:Label ID="Label1" runat="server" Text="Mã lớp" Font-Size="14pt"></asp:Label>
            </td>
            <td class="auto-style4">
                <asp:TextBox ID="tbMalop" runat="server" Height="35px" Width="400px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="text-align: center;">
                <asp:Label ID="Label2" runat="server" Text="Mã khóa học" Font-Size="14pt"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="drMaKH" runat="server" DataTextField="TenKH" DataValueField="MaKH" Font-Size="14pt" Height="35px" Width="400px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="text-align: center;">
                <asp:Label ID="Label3" runat="server" Text="Tên lớp" Font-Size="14pt" Width="200px"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="tbTenlop" runat="server" Height="35px" Width="400px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>
                <asp:Button ID="btAdd" runat="server" Font-Size="14pt" ForeColor="Black" Text="Thêm" OnClick="btAdd_Click" />
                <asp:Button ID="btUpdate" runat="server" Font-Size="14pt" ForeColor="Black" Text="Sửa" OnClick="btUpdate_Click" />
                <br />
                <asp:Label ID="ThongBao" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>
                <asp:TextBox ID="tbSearch" runat="server" Height="35px" Width="400px"></asp:TextBox>
                <asp:Button ID="btSearch" runat="server" Font-Size="14pt" ForeColor="Black" Text="Tìm theo mã lớp" OnClick="btSearch_Click" />
            </td>
        </tr>
    </table>
    <asp:GridView ID="gv_lop" runat="server" AutoGenerateColumns="False" RowStyle-VerticalAlign="Middle"
        Width="1900px" OnSelectedIndexChanged="gv_lop_SelectedIndexChanged" OnRowDeleting="gv_lop_RowDeleting" BorderColor="#00A885" BorderStyle="Ridge" BorderWidth="2px" Font-Size="18px">
        <Columns>
            <asp:CommandField ShowSelectButton="True" SelectText="Chọn" ItemStyle-ForeColor="#00A885" ItemStyle-Font-Bold="true" ItemStyle-Font-Size="16px" ItemStyle-Font-Underline="true">
                <ItemStyle Font-Bold="True" Font-Size="16px" Font-Underline="True" ForeColor="#00A885"></ItemStyle>
            </asp:CommandField>
            <asp:CommandField ShowDeleteButton="True" DeleteText="Xoá" />
            <asp:BoundField DataField="MaLop" HeaderText="Mã lớp" ItemStyle-ForeColor="Black" ItemStyle-Font-Size="18px">
                <ItemStyle Font-Size="18px" ForeColor="Black"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="TenLop" HeaderText="Tên lớp" ItemStyle-ForeColor="Black" ItemStyle-Font-Size="18px">
                <ItemStyle Font-Size="18px" ForeColor="Black"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="MaKH" HeaderText="Mã khoá học" ItemStyle-ForeColor="Black" ItemStyle-Font-Size="18px">
                <ItemStyle Font-Size="18px" ForeColor="Black"></ItemStyle>
            </asp:BoundField>       
        </Columns>
        <HeaderStyle HorizontalAlign="Center" CssClass="input" VerticalAlign="Middle" />
        <RowStyle HorizontalAlign="Center" VerticalAlign="Top" />
    </asp:GridView>
</asp:Content>
