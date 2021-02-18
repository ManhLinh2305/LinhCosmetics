package ptithcm.entity;

import java.util.Collection;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="KhachHang")
public class KhachHang {
@Id
@Column(name="MaKH")
private String makh;
@Column(name="TenKhach")
private String tenkhach;
@Column(name="DiaChi")
private String diachi;
@Column(name="DienThoai")
private String dienthoai;
@Column(name="Email")
private String email;
@Column(name="MatKhau")
private String matkhau;

@OneToMany(mappedBy="MaKH",fetch=FetchType.EAGER)
private Collection<DatHang> dathang;

public String getMakh() {
	return makh;
}

public void setMakh(String makh) {
	this.makh = makh;
}

public String getTenkhach() {
	return tenkhach;
}

public void setTenkhach(String tenkhach) {
	this.tenkhach = tenkhach;
}

public String getDiachi() {
	return diachi;
}

public void setDiachi(String diachi) {
	this.diachi = diachi;
}

public String getDienthoai() {
	return dienthoai;
}

public void setDienthoai(String dienthoai) {
	this.dienthoai = dienthoai;
}

public String getEmail() {
	return email;
}

public void setEmail(String email) {
	this.email = email;
}

public String getMatkhau() {
	return matkhau;
}

public void setMatkhau(String matkhau) {
	this.matkhau = matkhau;
}

public Collection<DatHang> getDathang() {
	return dathang;
}

public void setDathang(Collection<DatHang> dathang) {
	this.dathang = dathang;
}

}
