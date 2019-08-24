package com.makeIt.service.impl;

import com.makeIt.bean.User;
import com.makeIt.dao.impl.UserDaoImpl;
import com.makeIt.service.UserService;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class UserServiceImpl implements UserService {

    @Override
    public boolean isvalidateAdmin(User user) {
        ApplicationContext context = new ClassPathXmlApplicationContext("spring-config.xml");
        UserDaoImpl ldi = (UserDaoImpl) context.getBean("LoginDaoImpl");

        if(ldi.isvalidateAdmin(user))
            return true;
        else
            return false;
    }

    @Override
    public boolean register(User user) {
        ApplicationContext context = new ClassPathXmlApplicationContext("spring-config.xml");
        UserDaoImpl ldi = (UserDaoImpl) context.getBean("LoginDaoImpl");
        if(ldi.isvalidateAdminName(user.getUsername())) {
            ldi.addUser(user);
            return true;
        }
        return false;
    }
}
