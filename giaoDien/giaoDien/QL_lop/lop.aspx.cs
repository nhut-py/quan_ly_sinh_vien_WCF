using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace giaoDien.QL_lop
{
    public partial class lop : System.Web.UI.Page
    {
        Service.Service1Client sv = new Service.Service1Client();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                gv_lop.DataSource = sv.hienthilop();
                gv_lop.DataBind();
                //
                drMaKH.DataSource = sv.hienthikhoahoc();
                drMaKH.DataTextField = "TenKH";
                drMaKH.DataValueField = "MaKH";
                drMaKH.DataBind();
            }
        }

        protected void gv_lop_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow row = gv_lop.SelectedRow;
            tbMalop.Text = HttpUtility.HtmlDecode(row.Cells[2].Text);
            tbTenlop.Text = HttpUtility.HtmlDecode(row.Cells[3].Text);
            drMaKH.Text = HttpUtility.HtmlDecode(row.Cells[4].Text);
        }

        protected void gv_lop_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            gv_lop.SelectRow(e.RowIndex);
            gv_lop_SelectedIndexChanged(new object(), new EventArgs());
            string MaLop;
            MaLop = tbMalop.Text;
            bool kt;
            kt = sv.delete_lop(MaLop);
            if (kt)
            {
                gv_lop.DataSource = sv.hienthilop();
                gv_lop.DataBind();
            }
            else
            {
                ThongBao.Text = "Không thể xóa, vui lòng thử lại!";
            }
        }

        protected void btAdd_Click(object sender, EventArgs e)
        {
            string MaLop, MaKH, TenLop;
            MaLop = tbMalop.Text;
            MaKH = drMaKH.SelectedValue;
            TenLop = tbTenlop.Text;
            bool kt;
            kt = sv.add_lop(MaLop, MaKH, TenLop);
            if (kt)
            {
                gv_lop.DataSource = sv.hienthilop();
                gv_lop.DataBind();
            }
            else
            {
                ThongBao.Text = "Thêm không thành công, vui lòng kiểm tra lại!";
            }
        }

        protected void btSearch_Click(object sender, EventArgs e)
        {
            string MaLop;
            MaLop = tbSearch.Text;
            if (tbSearch.Text == "")
            {
                gv_lop.DataSource = sv.hienthilop();
                gv_lop.DataBind();
            }
            else
            {
                gv_lop.DataSource = sv.timma_lop(MaLop);
                gv_lop.DataBind();
            }
        }

        protected void btUpdate_Click(object sender, EventArgs e)
        {
            string MaLop, MaKH, TenLop;
            MaLop = tbMalop.Text;
            MaKH = drMaKH.SelectedValue;
            TenLop = tbTenlop.Text;          
            bool kt;
            kt = sv.update_lop(MaLop, MaKH, TenLop);
            if (kt)
            {
                gv_lop.DataSource = sv.hienthilop();
                gv_lop.DataBind();
            }
            else
            {
                ThongBao.Text = "Sửa không thành công, vui lòng kiểm tra lại!";
            }
        }
    }
}