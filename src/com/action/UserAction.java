package com.action;

import java.util.List;

import javax.annotation.Resource;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;

import com.entity.Indent;
import com.entity.Users;
import com.service.IndentService;
import com.service.ProductService;
import com.service.UserService;

@Namespace("/index")
@Results({
	@Result(name="login",location="/index/login.jsp"),
	@Result(name="register",location="/index/register.jsp"),
	@Result(name="reindex",type="redirect",location="index.action"),
	@Result(name="cart",location="/index/cart.jsp"),
	@Result(name="order",location="/index/order.jsp"),
})
public class UserAction extends BaseAction{
	private static final long serialVersionUID = 1L;
	
	private static final String INDENT_KEY = "indent";
	
	private Users user;
	private int productid;
	private List<Indent> indentList;
	
	@Resource
	private UserService userService;
	@Resource
	private IndentService indentService;
	@Resource
	private ProductService productService;

	
	/**
	 * 注册用户
	 * @return
	 */
	@Action("register")
	public String register(){
		if (user.getUsername().isEmpty()) {
			addActionMessage("用户名不能为空!");
			return "register";
		}else if (userService.isExist(user.getUsername())) {
			addActionMessage("用户名已存在!");
			return "register";
		}else {
			userService.add(user);
			addActionError("注册成功, 请登录!");
			return "login";
		}
	}
	
	/**
	 * 用户登录
	 * @return
	 * @throws Exception
	 */
	@Action("login")
	public String login() {
		if(userService.checkUser(user.getUsername(), user.getPassword())){
			getSession().put("user", userService.get(user.getUsername()));
			return "reindex";
		} else {
			addActionError("用户名或密码错误!");
			return "login";
		}
	}

	/**
	 * 注销登录
	 * @return
	 */
	@Action("logout")
	public String logout() {
		getSession().remove("user");
		getSession().remove("indent");
		return "login";
	}
	
	/**
	 * 查看购物车
	 * @return
	 */
	@Action("cart")
	public String cart() {
		return "cart";
	}
	
	/**
	 * 购买
	 * @return
	 */
	@Action("buy")
	public void buy(){
		Indent indent = (Indent) getSession().get(INDENT_KEY);
		if (indent==null) {
			getSession().put(INDENT_KEY, indentService.createIndent(productService.get(productid)));
		}else {
			getSession().put(INDENT_KEY, indentService.addIndentItem(indent, productService.get(productid)));
		}
		sendResponseMsg("ok");
	}
	
	/**
	 * 减少
	 */
	@Action("lessen")
	public void lessen(){
		Indent indent = (Indent) getSession().get(INDENT_KEY);
		if (indent != null) {
			getSession().put(INDENT_KEY, indentService.lessenIndentItem(indent, productService.get(productid)));
		}
		sendResponseMsg("ok");
	}
	
	/**
	 * 删除
	 */
	@Action("delete")
	public void delete(){
		Indent indent = (Indent) getSession().get(INDENT_KEY);
		if (indent != null) {
			getSession().put(INDENT_KEY, indentService.deleteIndentItem(indent, productService.get(productid)));
		}
		sendResponseMsg("ok");
	}
	
	
	/**
	 * 提交订单
	 * @return
	 */
	@Action("save")
	public String save(){
		Users user = (Users) getSession().get("user");
		if (user == null) {
			addActionError("请登录后提交订单!");
			return "login";
		}
		Indent indent = (Indent) getSession().get(INDENT_KEY);
		if (indent != null) {
			Users u = userService.get(user.getId());
			indent.setUser(u);
			indentService.saveIndent(indent);	// 保存订单
			getSession().remove(INDENT_KEY);	// 清除购物车
			addActionMessage("订单提交成功!");
		}
		return "cart";
	}
	
	/**
	 * 查看订单
	 * @return
	 */
	@Action("order")
	public String order(){
		Users user = (Users) getSession().get("user");
		if (user == null) {
			addActionError("请登录后查看订单!");
			return "login";
		}
		indentList = indentService.getListByUserid(user.getId());
		if (indentList!=null && !indentList.isEmpty()) {
			for(Indent indent : indentList){
				indent.setItemList(indentService.getItemList(indent.getId(), 1, 100)); // 暂不分页
			}
		}
		return "order";
	}
	
	
	public Users getUser() {
		return user;
	}

	public void setUser(Users user) {
		this.user = user;
	}

	public int getProductid() {
		return productid;
	}

	public void setProductid(int productid) {
		this.productid = productid;
	}

	public List<Indent> getIndentList() {
		return indentList;
	}

	public void setIndentList(List<Indent> indentList) {
		this.indentList = indentList;
	}
	
}
