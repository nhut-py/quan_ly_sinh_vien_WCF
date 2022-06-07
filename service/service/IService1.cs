using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;

namespace service
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "IService1" in both code and config file together.
    [ServiceContract]
    public interface IService1
    {
        ///  Hiển thị    
        [OperationContract]
        List<SinhVien> hienthisv();

        [OperationContract]
        List<KhoaHoc> hienthikhoahoc();


        // Sinh viên
        [OperationContract]
        SinhVien timSv(string MaSV);

        [OperationContract]
        List<SinhVien> timma_sinhvien(string MaSV);

        [OperationContract]
        bool add_sinhvien(string MaSV, string HoTen, string GioiTinh, string NgaySinh, string NoiSinh, string MaLop);

        [OperationContract]
        bool delete_sinhvien(string MaSV);

        [OperationContract]
        bool update_sinhvien(string MaSV, string HoTen, string GioiTinh, string NgaySinh, string NoiSinh, string MaLop);
        //Khoá học
        [OperationContract]
        List<KhoaHoc> timma_khoahoc(string MaKH);

        [OperationContract]
        KhoaHoc timkh(string MaKH);

        [OperationContract]
        bool add_khoahoc(string MaKH, string MaCTDT, string TenKH);

        [OperationContract]
        bool update_khoahoc(string MaKH, string MaCTDT, string TenKH);

        [OperationContract]
        bool delete_khoahoc(string MaKH);
        // Môn học
        [OperationContract]
        List<MonHoc> hienthimonhoc();

        [OperationContract]
        bool add_monhoc(string MaMH, string TenMH);

        [OperationContract]
        bool delete_monhoc(string MaMH);

        [OperationContract]
        List<MonHoc> timma_monhoc(string MaMH);

        [OperationContract]
        MonHoc timmh(string MaMH);

        [OperationContract]
        bool update_monhoc(string MaMH, string TenMH);
        //Lớp
        [OperationContract]
        List<Lop> hienthilop();

        [OperationContract]
        bool add_lop(string MaLop, string MaKH, string TenLop);

        [OperationContract]
        bool delete_lop(string MaLop);

        [OperationContract]
        List<Lop> timma_lop(string MaLop);

        [OperationContract]
        Lop timlop(string MaLop);

        [OperationContract]
        bool update_lop(string MaLop, string MaKH, string TenLop);
        //CTDT
        [OperationContract]
        List<CT_DaoTao> hienthiChuongTrinh();
    }


    // Use a data contract as illustrated in the sample below to add composite types to service operations.
    [DataContract]
    public class CompositeType
    {
        bool boolValue = true;
        string stringValue = "Hello ";

        [DataMember]
        public bool BoolValue
        {
            get { return boolValue; }
            set { boolValue = value; }
        }

        [DataMember]
        public string StringValue
        {
            get { return stringValue; }
            set { stringValue = value; }
        }
    }
}
