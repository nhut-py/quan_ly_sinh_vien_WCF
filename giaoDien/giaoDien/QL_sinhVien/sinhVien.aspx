<%@ Page Title="" Language="C#" MasterPageFile="~/formHome.Master" AutoEventWireup="true" CodeBehind="sinhVien.aspx.cs" Inherits="giaoDien.QL_sinhVien.sinhVien" %>

<asp:Content ID="Content3" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentHome" runat="server">
    <h3 style="text-align:center;">Quản lý sinh viên</h3>
    <table class="nav-justified">
        <tr>
            <td class="auto-style1" style="text-align: center;">
                <asp:Label ID="Label1" runat="server" Font-Size="14pt" Text="Mã sinh viên" Width="200px"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="tbMasv" runat="server" Height="35px" Width="600px"></asp:TextBox>
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style1" style="text-align: center;">
                <asp:Label ID="Label2" runat="server" Font-Size="14pt" Text="Họ và tên" Width="200px"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="tbHoten" runat="server" Height="35px" Width="600px"></asp:TextBox>
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style4" style="text-align: center;">
                <asp:Label ID="Label3" runat="server" Font-Size="14pt" Text="Giới tính" Width="200px"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:DropDownList ID="drGioitinh" runat="server" Height="35px" Width="600px">
                    <asp:ListItem>Nam</asp:ListItem>
                    <asp:ListItem>Nữ</asp:ListItem>
                </asp:DropDownList>
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style1" style="text-align: center;">
                <asp:Label ID="Label4" runat="server" Font-Size="14pt" Text="Ngày sinh" Width="200px"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="tbNgaysinh" runat="server" Height="35px" TextMode="Date" Width="600px"></asp:TextBox>
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="text-align: center;">
                <asp:Label ID="Label5" runat="server" Font-Size="14pt" ForeColor="Black" Text="Nơi sinh" Width="200px"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="tbNoisinh" runat="server" Height="35px" Width="600px"></asp:TextBox>
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style1" style="text-align: center;">
                <asp:Label ID="Label6" runat="server" Font-Size="14pt" ForeColor="Black" Text="Mã lớp"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="drmalop" runat="server" Height="35px" Width="600px" DataTextField="TenLop" DataValueField="MaLop">
                </asp:DropDownList>
                <%--                <asp:SqlDataSource ID="SqlData" runat="server" ConnectionString="<%$ ConnectionStrings:QLSVConnectionString %>" SelectCommand="SELECT [MaLop], [TenLop] FROM [Lop]"></asp:SqlDataSource>--%>
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>
                <asp:Button ID="btadd" runat="server" Font-Size="14pt" ForeColor="Black" Text="Thêm" OnClick="btadd_Click" />
                <asp:Button ID="btupdate" runat="server" Font-Size="14pt" ForeColor="Black" Text="Sửa" OnClick="btupdate_Click" />
                <br />
                <asp:Label ID="ThongBao" runat="server"></asp:Label>
                <br />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>

                <asp:TextBox ID="tbsearch" runat="server" Height="35px" Width="300px"></asp:TextBox>
                &nbsp;<asp:Button ID="btsearch" runat="server" Font-Size="14pt" ForeColor="Black" Text="Tìm theo mã sinh viên" OnClick="btsearch_Click" />

                <br />

                <br />

            </td>
        </tr>
    </table>
    <asp:GridView ID="gv_sinhvien" runat="server" AutoGenerateColumns="False" RowStyle-VerticalAlign="Middle"
        Width="1900px" OnSelectedIndexChanged="gv_sinhvien_SelectedIndexChanged" OnRowDeleting="gv_sinhvien_RowDeleting" BorderColor="#00A885" BorderStyle="Ridge" BorderWidth="2px" Font-Size="18px">
        <Columns>
            <asp:CommandField ShowSelectButton="True" SelectText="Chọn" ItemStyle-ForeColor="#00A885" ItemStyle-Font-Bold="true" ItemStyle-Font-Size="16px" ItemStyle-Font-Underline="true">
                <ItemStyle Font-Bold="True" Font-Size="16px" Font-Underline="True" ForeColor="#00A885"></ItemStyle>
            </asp:CommandField>
            <asp:CommandField ShowDeleteButton="True" DeleteText="Xoá" />
            <asp:BoundField DataField="MaSV" HeaderText="Mã sinh viên" ItemStyle-ForeColor="Black" ItemStyle-Font-Size="18px">
                <ItemStyle Font-Size="18px" ForeColor="Black"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="HoTen" HeaderText="Họ và tên" ItemStyle-ForeColor="Black" ItemStyle-Font-Size="18px">
                <ItemStyle Font-Size="18px" ForeColor="Black"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="GioiTinh" HeaderText="Giới tính" ItemStyle-ForeColor="Black" ItemStyle-Font-Size="18px">
                <ItemStyle Font-Size="18px" ForeColor="Black"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="NgaySinh" HeaderText="Ngày sinh" ItemStyle-ForeColor="Black" ItemStyle-Font-Size="18px">
                <ItemStyle Font-Size="18px" ForeColor="Black"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="NoiSinh" HeaderText="Nơi sinh" ItemStyle-ForeColor="Black" ItemStyle-Font-Size="18px">
                <ItemStyle Font-Size="18px" ForeColor="Black"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="MaLop" HeaderText="Mã lớp" ItemStyle-ForeColor="Black" ItemStyle-Font-Size="18px">
                <ItemStyle Font-Size="18px" ForeColor="Black"></ItemStyle>
            </asp:BoundField>
        </Columns>
        <HeaderStyle HorizontalAlign="Center" CssClass="input" VerticalAlign="Middle" />
        <RowStyle HorizontalAlign="Center" VerticalAlign="Top" />
    </asp:GridView>
</asp:Content>
