package com.makeIt.action;

import com.makeIt.bean.User;
import com.makeIt.service.impl.UserServiceImpl;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class registerAction extends ActionSupport implements ModelDriven<User> {
    private User user = new User();

    ApplicationContext context = new ClassPathXmlApplicationContext("spring-config.xml");
    UserServiceImpl lsi = (UserServiceImpl) context.getBean("LoginServiceImpl");
    @Override
    public String execute() throws Exception{
        if(lsi.register(user))
            return "success";
        else
            return "error";
    }

    @Override
    public User getModel() {
        return user;
    }
}
