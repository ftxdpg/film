package com.film.shiro;

import com.film.model.Admin;
import com.film.model.User;
import com.film.service.AdminService;
import com.film.service.UserService;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.HashSet;
import java.util.Set;

public class AdminRealm extends AuthorizingRealm {

	@Autowired
	private AdminService adminService;

	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(
			AuthenticationToken token) throws AuthenticationException {
		
		// 把AuthenticationToken转换为UserNamePasswordToken
		// 该对象是存储从前台表单的用户名密码
		// 底层由shiro进行比对
		UsernamePasswordToken userPasswordToken = (UsernamePasswordToken)token;
		
		// 从UserNamePasswordToken获取用户登录信息
		String username = userPasswordToken.getUsername();
		
		// 调用数据库，查询对应的用户记录
		Admin admin = adminService.login(new Admin(username));

		// 根据用户情况，来返回AuthenticationInfo，但是一般返回simpleAuthenticationInfo
		// 参数一：用户名
		// 参数二：密码， 使用byteSource来盐值加密
		// 参数三：realm的name，直接getName()即可
		// 该对象是存储后台从数据库返回的用户名密码
		SimpleAuthenticationInfo simpleAuthenticationInfo = new SimpleAuthenticationInfo(admin.getName(), admin.getPassword(), getName());
		return simpleAuthenticationInfo;
	}
	
	// 授权方法，首先要继承AuthorizingRealm
	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
		// 从PrincipalCollection获取用户登录信息
		Set<String> roles = new HashSet<>();
		roles.add("admin");
		
		// 利用登录用户的信息，获取用户的权限或者角色（可能需要查询数据库）
		SimpleAuthorizationInfo simpleAuthorizationInfo = new SimpleAuthorizationInfo(roles);

		return simpleAuthorizationInfo;
	}
}
