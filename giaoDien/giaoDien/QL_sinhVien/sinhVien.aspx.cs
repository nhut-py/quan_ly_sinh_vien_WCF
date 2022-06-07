using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace giaoDien.QL_sinhVien
{
    public partial class sinhVien : System.Web.UI.Page
    {
        Service.Service1Client sv = new Service.Service1Client();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                gv_sinhvien.DataSource = sv.hienthisv();
                gv_sinhvien.DataBind();
                // dropdown
                drmalop.DataSource = sv.hienthilop();
                drmalop.DataTextField = "TenLop";
                drmalop.DataValueField = "MaLop";
                drmalop.DataBind();

            }
        }
        protected void gv_sinhvien_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            gv_sinhvien.SelectRow(e.RowIndex);
            gv_sinhvien_SelectedIndexChanged(new object(), new EventArgs());
            string MaSV;
            MaSV = tbMasv.Text;
            bool kt;
            kt = sv.delete_sinhvien(MaSV);
            if (kt)
            {
                gv_sinhvien.DataSource = sv.hienthisv();
                gv_sinhvien.DataBind();
            }
            else
            {
                ThongBao.Text = "Không thể xóa, vui lòng thử lại!";
            }
        }

        protected void gv_sinhvien_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow row = gv_sinhvien.SelectedRow;
            tbMasv.Text = HttpUtility.HtmlDecode(row.Cells[2].Text);
            tbHoten.Text = HttpUtility.HtmlDecode(row.Cells[3].Text);
            drGioitinh.Text = HttpUtility.HtmlDecode(row.Cells[4].Text);
            tbNgaysinh.Text = Convert.ToDateTime(row.Cells[5].Text).ToString("dd-mm-yyyy");
            tbNoisinh.Text = HttpUtility.HtmlDecode(row.Cells[6].Text);
        }

        protected void btadd_Click(object sender, EventArgs e)
        {
            string MaSV, HoTen, GioiTinh, NoiSinh, MaLop;
            string NgaySinh;
            MaSV = tbMasv.Text;
            HoTen = tbHoten.Text;
            GioiTinh = drGioitinh.Text;
            NgaySinh = tbNgaysinh.Text;
            NoiSinh = tbNoisinh.Text;
            MaLop = drmalop.Text;
            bool kt;
            kt = sv.add_sinhvien(MaSV, HoTen, GioiTinh, NgaySinh, NoiSinh, MaLop);
            if (kt)
            {
                gv_sinhvien.DataSource = sv.hienthisv();
                gv_sinhvien.DataBind();
            }
            else
            {
                ThongBao.Text = "Thêm không thành công, vui lòng kiểm tra lại!";
            }
        }
        protected void btsearch_Click(object sender, EventArgs e)
        {
            string MaSV;
            MaSV = tbsearch.Text;
            if (tbsearch.Text == "")
            {
                gv_sinhvien.DataSource = sv.hienthisv();
                gv_sinhvien.DataBind();
            }
            else
            {
                gv_sinhvien.DataSource = sv.timma_sinhvien(MaSV);
                gv_sinhvien.DataBind();
            }
        }

        protected void btupdate_Click(object sender, EventArgs e)
        {
            string MaSV, HoTen, GioiTinh, NoiSinh, MaLop;
            string NgaySinh;
            MaSV = tbMasv.Text;
            HoTen = tbHoten.Text;
            GioiTinh = drGioitinh.Text;
            NgaySinh = tbNgaysinh.Text;
            NoiSinh = tbNoisinh.Text;
            MaLop = drmalop.Text;
            bool kt;
            kt = sv.update_sinhvien(MaSV, HoTen, GioiTinh, NgaySinh, NoiSinh, MaLop);
            if (kt)
            {
                gv_sinhvien.DataSource = sv.hienthisv();
                gv_sinhvien.DataBind();
            }
            else
            {
                ThongBao.Text = "Sửa không thành công, vui lòng kiểm tra lại!";
            }
        }
    }
}
