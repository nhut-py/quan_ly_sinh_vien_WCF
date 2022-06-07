using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;

namespace service
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "Service1" in code, svc and config file together.
    // NOTE: In order to launch WCF Test Client for testing this service, please select Service1.svc or Service1.svc.cs at the Solution Explorer and start debugging.
    public class Service1 :IService1
    {
        dataDataContext wf = new dataDataContext();

        public KhoaHoc KhoaHoc { get; private set; }
        public SinhVien SinhVien { get; private set; }
        public MonHoc MonHoc { get; private set; }
        public Lop Lop { get; private set; }

        //--------------Chương trình đào tạo
        public List<CT_DaoTao> hienthiChuongTrinh()
        {
            return wf.CT_DaoTaos.ToList();
        }
        //----------------------------Sinh viên-----------------------------------------------------
        //-------------------------------------------------------------------------------------------------------------------------
        //Hiển thị
        public List<SinhVien> hienthisv()
        {
            return wf.SinhViens.ToList();
        }

        //Thêm
        public bool add_sinhvien(string MaSV, string HoTen, string GioiTinh, string NgaySinh, string NoiSinh, string MaLop)
        {
            SinhVien SinhVien = new SinhVien();
            SinhVien.MaSV = MaSV;
            SinhVien.HoTen = HoTen;
            SinhVien.GioiTinh = GioiTinh;
            SinhVien.NgaySinh = Convert.ToDateTime(NgaySinh);
            SinhVien.NoiSinh = NoiSinh;
            SinhVien.MaLop = MaLop;        
            try
            {
                wf.SinhViens.InsertOnSubmit(SinhVien);
                wf.SubmitChanges();
                return true;
            }
            catch
            {
                return false;
            }
        }
        //Xóa
        public bool delete_sinhvien(string MaSV)
        {

            SinhVien SinhVien = timSv(MaSV);
            try
            {
                wf.SinhViens.DeleteOnSubmit(SinhVien);
                wf.SubmitChanges();
                return true;
            }
            catch
            {
                return false;
            }
        }
        //Sửa
        public bool update_sinhvien(string MaSV, string HoTen,string GioiTinh, string NgaySinh,string NoiSinh, string MaLop)
        {
            SinhVien = timSv(MaSV);
            SinhVien.HoTen = HoTen;
            SinhVien.GioiTinh = GioiTinh;
            SinhVien.NgaySinh = Convert.ToDateTime(NgaySinh);
            SinhVien.NoiSinh = NoiSinh;
            SinhVien.MaLop = MaLop;
            try
            {
                wf.SubmitChanges();
                return true;
            }
            catch
            {
                return false;
            }
        }
        // ckeck mã
        public SinhVien timSv(string MaSV)
        {
            return wf.SinhViens.Where(l => l.MaSV== MaSV).FirstOrDefault();
        }
        //tìm kiếm
        public List<SinhVien> timma_sinhvien(string MaSV)
        {
            return wf.SinhViens.Where(l => l.MaSV == MaSV).ToList();
        }
        //------------------Xong phần sinh viên-----------------------------------------------------


        //------------------------------------Khóa học-----------------------------------------------------
        //--------------------------------------------
        //Hiển thị 
        public List<KhoaHoc> hienthikhoahoc()
        {
            return wf.KhoaHocs.ToList();
        }

        //Thêm
        public bool add_khoahoc(string MaKH, string MaCTDT, string TenKH)
        {
            KhoaHoc KhoaHoc = new KhoaHoc();
            KhoaHoc.MaKH = MaKH;
            KhoaHoc.MaCTDT = MaCTDT;
            KhoaHoc.TenKH = TenKH;
            try
            {
                wf.KhoaHocs.InsertOnSubmit(KhoaHoc);
                wf.SubmitChanges();
                return true;
            }
            catch
            {
                return false;
            }
        }
        //Xóa
        public bool delete_khoahoc(string MaKH)
        {

            KhoaHoc KhoaHoc = timkh(MaKH);
            try
            {
                wf.KhoaHocs.DeleteOnSubmit(KhoaHoc);
                wf.SubmitChanges();
                return true;
            }
            catch
            {
                return false;
            }
        }

        //tìm kiếm
        public List<KhoaHoc> timma_khoahoc(string MaKH)
        {
            return wf.KhoaHocs.Where(l => l.MaKH == MaKH).ToList();
        }

        //Check mã
        public KhoaHoc timkh(string MaKH)
        {
            return wf.KhoaHocs.Where(l => l.MaKH == MaKH).FirstOrDefault();
        }

        //Sửa
        public bool update_khoahoc( string MaKH, string MaCTDT, string TenKH)
        {

            KhoaHoc = timkh(MaKH);
            KhoaHoc.MaCTDT = MaCTDT;
            KhoaHoc.TenKH = TenKH;
            try
            {
                wf.SubmitChanges();
                return true;
            }
            catch
            {
                return false;
            }
        }

        //------------------------------------Môn học-----------------------------------------------------
        //--------------------------------------------
        //Hiển thị 
        public List<MonHoc> hienthimonhoc()
        {
            return wf.MonHocs.ToList();
        }

        //Thêm
        public bool add_monhoc(string MaMH, string TenMH)
        {
            MonHoc MonHoc = new MonHoc();
            MonHoc.MaMH = MaMH;
            MonHoc.TenMH = TenMH;
            try
            {
                wf.MonHocs.InsertOnSubmit(MonHoc);
                wf.SubmitChanges();
                return true;
            }
            catch
            {
                return false;
            }
        }
        //Xóa
        public bool delete_monhoc(string MaMH)
        {

           MonHoc MonHoc = timmh(MaMH);
            try
            {
                wf.MonHocs.DeleteOnSubmit(MonHoc);
                wf.SubmitChanges();
                return true;
            }
            catch
            {
                return false;
            }
        }

        //tìm kiếm
        public List<MonHoc> timma_monhoc(string MaMH)
        {
            return wf.MonHocs.Where(l => l.MaMH == MaMH).ToList();
        }

        //Check mã
        public MonHoc timmh(string MaMH)
        {
            return wf.MonHocs.Where(l => l.MaMH == MaMH).FirstOrDefault();
        }

        //Sửa
        public bool update_monhoc(string MaMH, string TenMH)
        {

            MonHoc = timmh(MaMH);
            MonHoc.TenMH = TenMH;
            try
            {
                wf.SubmitChanges();
                return true;
            }
            catch
            {
                return false;
            }
        }
        //------------------------------------Lớp-----------------------------------------------------
        //--------------------------------------------
        //Hiển thị 
        public List<Lop> hienthilop()
        {
            return wf.Lops.ToList();
        }

        //Thêm
        public bool add_lop(string MaLop, string MaKH, string TenLop)
        {
            Lop Lop = new Lop();
            Lop.MaLop = MaLop;
            Lop.MaKH = MaKH;
            Lop.TenLop = TenLop;
            try
            {
                wf.Lops.InsertOnSubmit(Lop);
                wf.SubmitChanges();
                return true;
            }
            catch
            {
                return false;
            }
        }
        //Xóa
        public bool delete_lop(string MaLop)
        {

            Lop Lop = timlop(MaLop);
            try
            {
                wf.Lops.DeleteOnSubmit(Lop);
                wf.SubmitChanges();
                return true;
            }
            catch
            {
                return false;
            }
        }

        //tìm kiếm
        public List<Lop> timma_lop(string MaLop)
        {
            return wf.Lops.Where(l => l.MaLop == MaLop).ToList();
        }

        //Check mã
        public Lop timlop(string MaLop)
        {
            return wf.Lops.Where(l => l.MaLop == MaLop).FirstOrDefault();
        }

        //Sửa
        public bool update_lop(string MaLop, string MaKH, string TenLop)
        {
            Lop = timlop(MaLop);
            Lop.MaKH = MaKH;
            Lop.TenLop= TenLop;
            try
            {
                wf.SubmitChanges();
                return true;
            }
            catch
            {
                return false;
            }
        }
    }
}
