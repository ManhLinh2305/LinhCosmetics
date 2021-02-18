package ptithcm.entity;

import java.util.Collection;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="SanPham")
public class SanPham {
@Id
@Column(name="MaHang")
private String mahang;

@Column(name="TenHang")
private String tenhang;

@Column(name="HinhAnh")
private String hinhanh;

@Column(name="GiaBan")
private Double giaban;

@Column(name="GiaDaGiam")
private Double giadagiam;

@OneToMany(mappedBy="MaHang",fetch=FetchType.EAGER)
private Collection<CTDatHang>ctdathang;

public String getMahang() {
	return mahang;
}

public void setMahang(String mahang) {
	this.mahang = mahang;
}

public String getTenhang() {
	return tenhang;
}

public void setTenhang(String tenhang) {
	this.tenhang = tenhang;
}

public String getHinhanh() {
	return hinhanh;
}

public void setHinhanh(String hinhanh) {
	this.hinhanh = hinhanh;
}

public Double getGiaban() {
	return giaban;
}

public void setGiaban(Double giaban) {
	this.giaban = giaban;
}

public Double getGiadagiam() {
	return giadagiam;
}

public void setGiadagiam(Double giadagiam) {
	this.giadagiam = giadagiam;
}

public Collection<CTDatHang> getCtdathang() {
	return ctdathang;
}

public void setCtdathang(Collection<CTDatHang> ctdathang) {
	this.ctdathang = ctdathang;
}


}

