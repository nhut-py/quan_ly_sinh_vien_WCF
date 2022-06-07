using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace giaoDien.QL_monHoc
{
    public partial class monHoc : System.Web.UI.Page
    {
        Service.Service1Client sv = new Service.Service1Client();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                gv_monHoc.DataSource = sv.hienthimonhoc();
                gv_monHoc.DataBind();
            }
        }

        protected void btAdd_Click(object sender, EventArgs e)
        {
            string MaMH, TenMH;
            MaMH = tbMaMH.Text;
            TenMH = tbTenMH.Text;
            bool kt;
            kt = sv.add_monhoc(MaMH, TenMH);
            if (kt)
            {
                gv_monHoc.DataSource = sv.hienthimonhoc();
                gv_monHoc.DataBind();
            }
            else
            {
                ThongBao.Text = "Thêm không thành công, vui lòng kiểm tra lại!";
            }
        }
        protected void gv_mh_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow row = gv_monHoc.SelectedRow;
            tbMaMH.Text = HttpUtility.HtmlDecode(row.Cells[2].Text);
            tbTenMH.Text = HttpUtility.HtmlDecode(row.Cells[3].Text);
        }

        protected void gv_mh_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            gv_monHoc.SelectRow(e.RowIndex);
            gv_mh_SelectedIndexChanged(new object(), new EventArgs());
            string MaMH;
            MaMH = tbMaMH.Text;
            bool kt;
            kt = sv.delete_monhoc(MaMH);
            if (kt)
            {
                gv_monHoc.DataSource = sv.hienthimonhoc();
                gv_monHoc.DataBind();
            }
            else
            {
                ThongBao.Text = "Không thể xóa, vui lòng thử lại!";
            }
        }

        protected void btSearch_Click(object sender, EventArgs e)
        {
            string MaMH;
            MaMH = tbSearch.Text;
            if (tbSearch.Text == "")
            {
                gv_monHoc.DataSource = sv.hienthimonhoc();
                gv_monHoc.DataBind();
            }
            else
            {
                gv_monHoc.DataSource = sv.timma_monhoc(MaMH);
                gv_monHoc.DataBind();
            }
        }

        protected void btUpdate_Click(object sender, EventArgs e)
        {
            string MaMH, TenMH;
            MaMH = tbMaMH.Text;
            TenMH = tbTenMH.Text;
            bool kt;
            kt = sv.update_monhoc(MaMH, TenMH);
            if (kt)
            {
                gv_monHoc.DataSource = sv.hienthimonhoc();
                gv_monHoc.DataBind();
            }
            else
            {
                ThongBao.Text = "Sửa không thành công, vui lòng kiểm tra lại!";
            }
        }
    }
}