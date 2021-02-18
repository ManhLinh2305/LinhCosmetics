package ptithcm.controller;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import ptithcm.entity.User;

@Transactional
@Controller

public class UserController {
	@Autowired
	SessionFactory factory;

	@RequestMapping(value = "dangky", method = RequestMethod.GET)
	public String dangky(ModelMap model) {
		model.addAttribute("user", new User());
		return "dangky";
	}

	@RequestMapping(value = "dangky", method = RequestMethod.POST)
	public String dangky(ModelMap model, @ModelAttribute("user") User user, BindingResult errors) {
		if (user.getHoten().trim().length() == 0) {
			errors.rejectValue("hoten", "user", "Vui lòng nhập username!");
		}
		if (user.getEmail().trim().length() == 0) {
			errors.rejectValue("email", "user", "Vui lòng nhập pass!");
		}
		if (user.getDienthoai().trim().length() == 0) {
			errors.rejectValue("dienthoai", "user", "Vui lòng nhập SĐT!");
		}
		if (user.getPass().trim().length() == 0) {
			errors.rejectValue("pass", "user", "Vui lòng nhập password!");
		}

		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			if (errors.hasErrors()) {
				model.addAttribute("message", "Vui lòng sửa lỗi!");
			} else {
				session.save(user);
				t.commit();
				model.addAttribute("message", "Thêm mới thành công!");
			}

		} catch (Exception e) {
			t.rollback();
			model.addAttribute("message", "Thêm mới thất bại!");
		} finally {
			session.close();
		}
		return "dangky";
	}

	@RequestMapping("admin")
	public String admin(ModelMap model) {
		Session session = factory.getCurrentSession();
		String hql = "FROM User";
		Query query = session.createQuery(hql);
		List<User> list = query.list();
		model.addAttribute("users", list);
		return "admin";
	}

	@RequestMapping(value = "delete/{email}", method = RequestMethod.GET)
	public String delete(ModelMap model, @PathVariable String email) {
		Session session = factory.getCurrentSession();
		try {
			User s = (User) session.get(User.class, email);
			session.delete(s);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return "redirect:/admin.htm";
	}
	
	
	@RequestMapping(value = "update1", method = RequestMethod.POST)
	public String createOrUpdate(ModelMap model, @ModelAttribute("User") User User) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			session.saveOrUpdate(User);
			t.commit();
			model.addAttribute("message", "Cập nhật thành công");
		} catch (Exception e) {
			t.rollback();
			model.addAttribute("message", "Cập nhật thất bại");
		} finally {
			session.flush();
			session.close();
		}
		return "redirect:/admin.htm";
	}

	@RequestMapping(value = "update1/{email}", method = RequestMethod.GET)
	public String edit(ModelMap model,@PathVariable("email") String email, @ModelAttribute("User") User User) {
		
		User User1 = this.getUser(email);
		model.addAttribute("Userdt",User1);
		return "update1";
	}
	
	public User getUser(String email) {
		System.out.print(email);
		Session session = factory.getCurrentSession();
		String hql = "FROM User u WHERE u.email = :email";
		Query query = session.createQuery(hql).setParameter("email",email);
		List<User> list = query.list();
		return list.size() > 0 ? list.get(0) : null;
	}
	
String bien;
	
	@RequestMapping(value = "dangnhap", method = RequestMethod.GET)
	public String dangnhap(ModelMap model) {
		model.addAttribute("user", new User());
		return "dangnhap";
	}

	@RequestMapping(value="dangnhap", method=RequestMethod.POST)
	public String index(ModelMap model,
			@RequestParam("email") String email,
			@RequestParam("pass") String pass,
			@ModelAttribute("user") User user){
		if(email.equals("admin@gmail.com")&&pass.equals("123")){
			bien="1";
			return "redirect:/admin.htm";
		}
		Session session=factory.getCurrentSession();
		String hql="FROM User u WHERE u.email='"+email+"' AND u.pass='"+pass+"'";
		Query query=session.createQuery(hql);
		List<User> list=query.list();
		int count=0;
		for(User u : list){
			count++;
		}
		if(count==1){
			for(User u : list){
				user.setEmail(u.getEmail());
				user.setPass(u.getPass());
				user.setHoten(u.getHoten());
				user.setDienthoai(u.getDienthoai());
			}
			bien="1";
			//model.addAttribute("Userdt",list);
			return "thongtin";
		}
		else{
			model.addAttribute("message", "Sai Tên đăng nhập hoặc Mật khẩu");
			return "dangnhap";
		}
	}
	
	@RequestMapping("dangnhap")
	public String Login(ModelMap model){
		if(bien.equals("0")){
			return "dangnhap";
		}
		else{
				return "thongtin";
		}
	}
	

}
