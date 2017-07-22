package com.film.controller;

import com.film.model.Mail;
import com.film.model.User;
import com.film.service.UserService;
import com.film.util.FilmResult;
import com.film.util.MailUtil;
import com.film.util.ValidatedEmail;
import com.film.util.ValidatedPhone;
import com.film.util.msg.IndustrySMS;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.DigestUtils;
import org.springframework.util.StringUtils;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpSession;

/**
 * Created by 曹金洲.
 * 创建的时间：2017/7/9.
 * 作用：用户公用控制器
 */
@Controller
@RequestMapping("/common")
public class CommonController {

    @Autowired
    private UserService userService;

    // 首页
    @RequestMapping("/index")
    public String index(){
        return "index";
    }

    // 登录页面
    @RequestMapping("/loginUI")
    public String loginUI(){
        return "front/user/loginUI";
    }

    // 邮箱注册页面
    @RequestMapping(value = "/emailRegUI")
    public String emailReg(){
        return "front/user/emailReg";
    }

    // 短信注册页面
    @RequestMapping(value = "/messageRegUI")
    public String messageReg(){
        return "front/user/messageReg";
    }

    // 邮箱注册
    @RequestMapping(value = "/emailReg", method = RequestMethod.POST)
    public String emailReg(@Validated(value = {ValidatedEmail.class}) User user, BindingResult result, String code, RedirectAttributes attributes, HttpSession session){
        if (result.hasErrors()){
            // addFlashAttribute相当于放在session域，不会拼接在url后面
            attributes.addFlashAttribute("result",new FilmResult(404,"格式填写错误",null));
            return "redirect:/common/emailRegUI";
        }
        if (StringUtils.isEmpty(session.getAttribute("emailCode")) || !session.getAttribute("emailCode").equals(code)){
            attributes.addFlashAttribute("result", new FilmResult(404, "验证码错误", null));
            return "redirect:/common/emailRegUI";
        }
        user.setPassword(DigestUtils.md5DigestAsHex(user.getPassword().getBytes()));
        userService.insert(user);
        return "redirect:/common/loginUI";
    }

    // 短信注册
    @RequestMapping(value = "/messageReg", method = RequestMethod.POST)
    public String messageReg(@Validated(value = {ValidatedPhone.class}) User user, BindingResult result, String code, RedirectAttributes attributes, HttpSession session){
        if (result.hasErrors()){
            // addFlashAttribute相当于放在session域，不会拼接在url后面
            attributes.addFlashAttribute("result",new FilmResult(404,"格式填写错误",null));
            return "redirect:/common/messageRegUI";
        }
        if (StringUtils.isEmpty(session.getAttribute("msgCode")) || !session.getAttribute("msgCode").equals(code)){
            attributes.addFlashAttribute("result", new FilmResult(404, "验证码错误", null));
            return "redirect:/common/messageRegUI";
        }
        user.setPassword(DigestUtils.md5DigestAsHex(user.getPassword().getBytes()));
        userService.insert(user);
        return "redirect:/common/loginUI";
    }

    // 登录验证
    @RequestMapping("/login")
    public String login(User user, RedirectAttributes attributes, HttpSession session){
        user.setPassword(DigestUtils.md5DigestAsHex(user.getPassword().getBytes()));
        User login = userService.login(user);
        if (login == null){
            attributes.addFlashAttribute("result", "用户名或密码错误");
            return "redirect:/common/loginUI";
        }
        session.setAttribute("user", login);
        return "redirect:/common/index";
    }

    // 验证name的唯一
    @RequestMapping(value = "/testName", method = RequestMethod.POST)
    @ResponseBody
    public FilmResult testName(String name){
        int name1 = userService.selectByName(name);
        if (name1 > 0){
            return new FilmResult(404,"昵称不可用",null);
        }
        return new FilmResult(200,"昵称可用",null);
    }

    // 验证email的唯一
    @RequestMapping(value = "/testEmail", method = RequestMethod.POST)
    @ResponseBody
    public FilmResult testEmail(String email){
        int email1 = userService.selectByEmail(email);
        if (email1 > 0){
            return new FilmResult(404,"邮箱不可用",null);
        }
        return new FilmResult(200,"邮箱可用",null);
    }

    // 验证phone的唯一
    @RequestMapping(value = "/testPhone", method = RequestMethod.POST)
    @ResponseBody
    public FilmResult testPhone(String phone){
        int phone1 = userService.selectByPhone(phone);
        if (phone1 > 0){
            return new FilmResult(404,"手机号不可用",null);
        }
        return new FilmResult(200,"手机号可用",null);
    }

    // 发送邮件
    @RequestMapping(value = "/sendEmail", method = RequestMethod.POST)
    @ResponseBody
    public FilmResult sendEmail(String email, HttpSession session){
        try {
            String code = "";
            for (int i = 0; i < 6; i++) {
                code += (int)(Math.random() * 10);
            }
            Mail mail = new Mail();
            mail.setHost("smtp.qq.com");    // 设置邮件服务器，如果是QQ之外的，自己找
            mail.setPortNumber("465");      // 设置邮件服务器端口，默认25
            mail.setSender("570384231@qq.com");      // 发送人
            mail.setName("film.com");          // 发送人昵称
            mail.setReceiver(email);           // 接收人
            mail.setUsername("570384231@qq.com");    // 登录账号
            mail.setPassword("xzpjrbgotspdbaid");    //登录密码，就是生成授权验证码
            mail.setSubject("邮箱验证码");             // 设置邮件的标题
            mail.setMessage("你的验证码为：" + code);     // 邮件的内容
            if (new MailUtil().send(mail)){
                System.out.println("发送成功");
                session.setAttribute("emailCode", code);
                return new FilmResult(200, null, null);
            }else {
                System.out.println("发送失败");
                return new FilmResult(404, null, null);
            }
        }catch (Exception e){
            e.printStackTrace();
            return new FilmResult(404, null, null);
        }
    }

    // 发送短信
    @RequestMapping(value = "/sendMessage", method = RequestMethod.POST)
    @ResponseBody
    public FilmResult sendMessage(String phone, HttpSession session){
        try {
            IndustrySMS.setTo(phone);
            session.setAttribute("msgCode", IndustrySMS.getBack());
            System.out.println("手机验证码为：" + IndustrySMS.getBack());
            IndustrySMS.execute();
            return new FilmResult(200, "已发送", null);
        }catch (Exception e){
            e.printStackTrace();
            return new FilmResult(404, "内部错误", null);
        }
    }

    // 注销
    @RequestMapping("/logout")
    public String logOut(HttpSession session){
        if (session.getAttribute("admin") != null){
            session.removeAttribute("admin");
        }
        if (session.getAttribute("user") != null){
            session.removeAttribute("user");
        }
        return "redirect:/common/index";
    }

    // 忘记密码1：邮箱找回密码或者短信找回判断页面
    @RequestMapping("/forgetPasswordUI")
    public String forgetPasswordUI(){
        return "front/user/password/judgeForget";
    }

    // 手机忘记密码2：短信找回密码页面
    @RequestMapping("/forgetPasswordByPhoneUI")
    public String forgetPasswordByPhoneUI(){
        return "front/user/password/findByPhone";
    }

    // 手机忘记密码2：短信找回密码
    @RequestMapping("/forgetPasswordByPhone")
    public String forgetPasswordByPhone(User user, RedirectAttributes attributes, HttpSession session){
        User user1 = userService.login(user);
        if (user1 == null){
            attributes.addFlashAttribute("result", "手机号码错误，或者该帐号没有绑定手机号码");
            return "redirect:/common/forgetPasswordByPhoneUI";
        }
        session.setAttribute("forgetUserByPhone", user1);
        return "redirect:/common/inputPhoneCodeUI";
    }

    // 手机忘记密码3：输入短信验证码页面
    @RequestMapping("/inputPhoneCodeUI")
    public String inputPhoneCodeUI(){
        return "front/user/password/messageCode";
    }

    // 手机忘记密码3：输入短信验证码
    @RequestMapping("/inputPhoneCode")
    public String inputPhoneCode(String code, HttpSession session, RedirectAttributes attributes){
        String msgCode = (String) session.getAttribute("msgCode");
        if (msgCode == null || !msgCode.equals(code)){
            attributes.addFlashAttribute("result", "验证码错误，请认真核对");
            return "redirect:/common/inputPhoneCodeUI";
        }
        return "redirect:/common/inputNewPasswordByPhoneUI";
    }

    // 手机忘记密码4：输入新密码页面
    @RequestMapping("/inputNewPasswordByPhoneUI")
    public String inputNewPasswordByPhoneUI(){
        return "front/user/password/newPasswordByPhone";
    }

    // 手机忘记密码4：保存新密码
    @RequestMapping("/inputNewPasswordByPhone")
    public String inputNewPassword(String password, HttpSession session, RedirectAttributes attributes){
        User forgetUserByPhone = (User) session.getAttribute("forgetUserByPhone");
        try {
            forgetUserByPhone.setPassword(DigestUtils.md5DigestAsHex(password.getBytes()));
            userService.updateByPrimaryKey(forgetUserByPhone);
            return "redirect:/common/loginUI";
        }catch (Exception e){
            e.printStackTrace();
            attributes.addFlashAttribute("result", "修改失败，请稍候重试");
            return "redirect:/common/forgetPasswordUI";
        }
    }

    // 邮箱忘记密码2：邮箱找回密码页面
    @RequestMapping("/forgetPasswordByEmailUI")
    public String forgetPasswordByEmailUI(){
        return "front/user/password/findByEmail";
    }

    // 邮箱忘记密码2：邮箱找回密码
    @RequestMapping("/forgetPasswordByEmail")
    public String forgetPasswordByEmail(User user, RedirectAttributes attributes, HttpSession session){
        User user1 = userService.login(user);
        if (user1 == null){
            attributes.addFlashAttribute("result", "邮箱错误，或者该帐号没有绑定邮箱");
            return "redirect:/common/forgetPasswordByEmailUI";
        }
        session.setAttribute("forgetUserByEmail", user1);
        return "redirect:/common/inputEmailCodeUI";
    }

    // 邮箱忘记密码3：输入邮箱验证码页面
    @RequestMapping("/inputEmailCodeUI")
    public String inputEmailCodeUI(){
        return "front/user/password/emailCodeUI";
    }

    // 邮箱忘记密码3：输入邮箱验证码页面
    @RequestMapping("/inputEmailCode")
    public String inputEmailCode(String code, HttpSession session, RedirectAttributes attributes){
        String emailCode = (String) session.getAttribute("emailCode");
        if (emailCode == null || !emailCode.equals(code)){
            attributes.addFlashAttribute("result", "验证码错误");
            return "redirect:/common/inputEmailCodeUI";
        }
        return "redirect:/common/inputNewPasswordByEmailUI";
    }

    // 邮箱忘记密码4：输入新密码页面
    @RequestMapping("/inputNewPasswordByEmailUI")
    public String inputNewPasswordByEmailUI(){
        return "front/user/password/newPasswordByEmail";
    }

    // 邮箱忘记密码4：输入新密码
    @RequestMapping("/inputNewPasswordByEmail")
    public String inputNewPasswordByEmail(String password, HttpSession session, RedirectAttributes attributes){
        User forgetUserByEmail = (User) session.getAttribute("forgetUserByEmail");
        try {
            forgetUserByEmail.setPassword(DigestUtils.md5DigestAsHex(password.getBytes()));
            userService.updateByPrimaryKey(forgetUserByEmail);
            return "redirect:/common/loginUI";
        }catch (Exception e){
            e.printStackTrace();
            attributes.addFlashAttribute("result", "修改失败，请稍候重试");
            return "redirect:/common/forgetPasswordUI";
        }
    }
}
