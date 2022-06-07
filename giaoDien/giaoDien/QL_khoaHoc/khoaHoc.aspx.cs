using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace giaoDien.QL_khoaHoc
{
    public partial class khoaHoc : System.Web.UI.Page
    {
        Service.Service1Client sv = new Service.Service1Client();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                gv_KH.DataSource = sv.hienthikhoahoc();
                gv_KH.DataBind();
                // dropdown
                drMaCTDT.DataSource = sv.hienthiChuongTrinh();
                drMaCTDT.DataTextField = "TenCTDT";
                drMaCTDT.DataValueField = "MaCTDT";
                drMaCTDT.DataBind();
            }
        }

        protected void btSearch_Click(object sender, EventArgs e)
        {
            string MaKH;
            MaKH = tbSearch.Text;
            if (tbSearch.Text == "")
            {
                gv_KH.DataSource = sv.hienthikhoahoc();
                gv_KH.DataBind();
            }
            else
            {
                gv_KH.DataSource = sv.timma_khoahoc(MaKH);
                gv_KH.DataBind();
            }
        }

        protected void btUpdate_Click(object sender, EventArgs e)
        {
            string MaKH, MaCTDT, TenKH;
            MaKH = tbMaKH.Text;
            MaCTDT = drMaCTDT.SelectedValue;
            TenKH = tbTenKH.Text;
            bool kt;
            kt = sv.update_khoahoc(MaKH, MaCTDT,TenKH);
            if (kt)
            {
                gv_KH.DataSource = sv.hienthikhoahoc();
                gv_KH.DataBind();
            }
            else
            {
                ThongBao.Text = "Sửa không thành công, vui lòng kiểm tra lại!";
            }
        }
        protected void gv_KH_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            gv_KH.SelectRow(e.RowIndex);
            gv_KH_SelectedIndexChanged(new object(), new EventArgs());
            string MaKH;
            MaKH = tbMaKH.Text;
            bool kt;
            kt = sv.delete_khoahoc(MaKH);
            if (kt)
            {
                gv_KH.DataSource = sv.hienthikhoahoc();
                gv_KH.DataBind();
            }
            else
            {
                ThongBao.Text = "Không thể xóa, vui lòng thử lại!";
            }
        }
        protected void gv_KH_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow row = gv_KH.SelectedRow;
            tbMaKH.Text = HttpUtility.HtmlDecode(row.Cells[2].Text);
            tbTenKH.Text = HttpUtility.HtmlDecode(row.Cells[3].Text);
            drMaCTDT.SelectedValue = HttpUtility.HtmlDecode(row.Cells[4].Text);
        }

        protected void btAdd_Click(object sender, EventArgs e)
        {
            string MaKH, MaCTDT, TenKH;
            MaKH = tbMaKH.Text;
            MaCTDT = drMaCTDT.SelectedValue;
            TenKH = tbTenKH.Text;
            bool kt;
            kt = sv.add_khoahoc(MaKH, MaCTDT, TenKH);
            if (kt)
            {
                gv_KH.DataSource = sv.hienthikhoahoc();
                gv_KH.DataBind();
            }
            else
            {
                ThongBao.Text = "Thêm không thành công, vui lòng kiểm tra lại!";
            }
        }
    }
}