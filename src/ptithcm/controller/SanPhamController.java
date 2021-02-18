package ptithcm.controller;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ptithcm.entity.SanPham;


@Transactional
@Controller
public class SanPhamController {
	@Autowired
	SessionFactory factory;
	@RequestMapping("dssanpham")
	public String admin(ModelMap model) {
		Session session = factory.getCurrentSession();
		String hql = "FROM SanPham";
		Query query = session.createQuery(hql);
		List<SanPham> list = query.list();
		model.addAttribute("sp", list);
		return "dssanpham";
	}
	
	@RequestMapping(value = "delete1/{mahang}", method = RequestMethod.GET)
	public String delete(ModelMap model, @PathVariable String mahang) {
		Session session = factory.getCurrentSession();
		try {
			SanPham s = (SanPham) session.get(SanPham.class, mahang);
			session.delete(s);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return "redirect:/dssanpham.htm";
	}
	
	
	@RequestMapping(value = "update11", method = RequestMethod.POST)
	public String createOrUpdate(ModelMap model, @ModelAttribute("SanPham") SanPham SanPham) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			session.saveOrUpdate(SanPham);
			t.commit();
			model.addAttribute("message", "Cập nhật thành công");
		} catch (Exception e) {
			t.rollback();
			model.addAttribute("message", "Cập nhật thất bại");
		} finally {
			session.flush();
			session.close();
		}
		return "redirect:/dssanpham.htm";
	}

	@RequestMapping(value = "update11/{mahang}", method = RequestMethod.GET)
	public String edit(ModelMap model,@PathVariable("mahang") String mahang, @ModelAttribute("SanPham") SanPham SanPham) {
		
		SanPham SanPham1 = this.getSanPham(mahang);
		model.addAttribute("SanPhamdt",SanPham1);
		return "update11";
	}
	
	public SanPham getSanPham(String mahang) {
		System.out.print(mahang);
		Session session = factory.getCurrentSession();
		String hql = "FROM SanPham u WHERE u.mahang = :mahang";
		Query query = session.createQuery(hql).setParameter("mahang",mahang);
		List<SanPham> list = query.list();
		return list.size() > 0 ? list.get(0) : null;
	}
	
	
	@RequestMapping("sanpham1")
	public String Sanpham1(ModelMap model) {
		Session session = factory.getCurrentSession();
		String hql = "from SanPham where MaHang like :keyword";
		//select fieldA from tableA where fieldB like '%:searchKey%'"
		Query query = session.createQuery(hql);
		query.setParameter("keyword", "%" + "C" + "%");
		@SuppressWarnings("unchecked")
		List<SanPham> list = query.list();
		model.addAttribute("sp1", list);
		
		List<SanPham> newList1 = new ArrayList<>();
		for(int i=0;i<4;i++){
			newList1.add(list.get(i));
		}
		model.addAttribute("sp11", newList1);
		
		List<SanPham> newList2 = new ArrayList<>();
		for(int i=4;i<8;i++){
			newList2.add(list.get(i));
		}
		model.addAttribute("sp12", newList2);
		
		return "sanpham1";
	}
	
}
