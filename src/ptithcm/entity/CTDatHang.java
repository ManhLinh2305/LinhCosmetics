package ptithcm.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="CTDatHang")
public class CTDatHang {
@Id
@Column(name="MaCTDH")
private Integer MaCTDH;
@ManyToOne
@JoinColumn(name="MaDH")
private DatHang MaDH;

@ManyToOne
@JoinColumn(name="MaHang")
private SanPham MaHang;

@Column(name="SoLuong")
private Integer soluong;

@Column(name="DonGia")
private Double dongia;

@Column(name="ThanhTien")
private Double thanhtien;

public CTDatHang() {
	super();
	// TODO Auto-generated constructor stub
}

public CTDatHang(Integer maCTDH, DatHang maDH, SanPham maHang, Integer soluong, Double dongia, Double thanhtien) {
	super();
	MaCTDH = maCTDH;
	MaDH = maDH;
	MaHang = maHang;
	this.soluong = soluong;
	this.dongia = dongia;
	this.thanhtien = thanhtien;
}

public Integer getMaCTDH() {
	return MaCTDH;
}

public void setMaCTDH(Integer maCTDH) {
	MaCTDH = maCTDH;
}

public DatHang getMaDH() {
	return MaDH;
}

public void setMaDH(DatHang maDH) {
	MaDH = maDH;
}

public SanPham getMaHang() {
	return MaHang;
}

public void setMaHang(SanPham maHang) {
	MaHang = maHang;
}

public Integer getSoluong() {
	return soluong;
}

public void setSoluong(Integer soluong) {
	this.soluong = soluong;
}

public Double getDongia() {
	return dongia;
}

public void setDongia(Double dongia) {
	this.dongia = dongia;
}

public Double getThanhtien() {
	return thanhtien;
}

public void setThanhtien(Double thanhtien) {
	this.thanhtien = thanhtien;
}


}
