package ptithcm.entity;

import java.util.Collection;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="DatHang")
public class DatHang {
@Id
@Column(name="MaDH")
private String madh;

@ManyToOne
@JoinColumn(name="MaKH")
private KhachHang MaKH;

@Column(name="NgayDatHang")
@Temporal(TemporalType.DATE)
@DateTimeFormat(pattern="yyyy/mm/dd")
private Date ngaydathang;

@OneToMany(mappedBy="MaDH", fetch=FetchType.EAGER)
private Collection<CTDatHang>ctdathang;

public DatHang() {
	super();
	// TODO Auto-generated constructor stub
}

public DatHang(String madh, KhachHang maKH, Date ngaydathang, Collection<CTDatHang> ctdathang) {
	super();
	this.madh = madh;
	MaKH = maKH;
	this.ngaydathang = ngaydathang;
	this.ctdathang = ctdathang;
}

public String getMadh() {
	return madh;
}

public void setMadh(String madh) {
	this.madh = madh;
}

public KhachHang getMaKH() {
	return MaKH;
}

public void setMaKH(KhachHang maKH) {
	MaKH = maKH;
}

public Date getNgaydathang() {
	return ngaydathang;
}

public void setNgaydathang(Date ngaydathang) {
	this.ngaydathang = ngaydathang;
}

public Collection<CTDatHang> getCtdathang() {
	return ctdathang;
}

public void setCtdathang(Collection<CTDatHang> ctdathang) {
	this.ctdathang = ctdathang;
}




}
