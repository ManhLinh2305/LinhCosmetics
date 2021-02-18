package ptithcm.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Users")
public class User {
 @Column(name="HoTen")
 private String hoten;
 
 @Id
 @Column(name="Email")
 private String email;
 
 @Column(name="DienThoai")
 private String dienthoai;
 
 @Column(name="Password")
 private String pass;

public String getHoten() {
	return hoten;
}

public void setHoten(String hoten) {
	this.hoten = hoten;
}

public String getEmail() {
	return email;
}

public void setEmail(String email) {
	this.email = email;
}

public String getDienthoai() {
	return dienthoai;
}

public void setDienthoai(String dienthoai) {
	this.dienthoai = dienthoai;
}

public String getPass() {
	return pass;
}

public void setPass(String pass) {
	this.pass = pass;
}
 
 
}
