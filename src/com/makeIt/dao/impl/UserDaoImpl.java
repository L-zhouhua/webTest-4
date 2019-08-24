package com.makeIt.dao.impl;

import com.makeIt.bean.User;
import com.makeIt.dao.UserDao;
import com.makeIt.util.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import java.util.List;

public class UserDaoImpl implements UserDao {

    //登录验证
    @Override
    public boolean isvalidateAdmin(User user) {
        Session session = HibernateUtil.currentSession();
        Transaction tx = session.beginTransaction();
        String getSql = "from User as p where p.username= ?1 and p.password=?2";
        Query query = session.createQuery(getSql);
        query.setParameter(1,user.getUsername());
        query.setParameter(2,user.getPassword());
        List<User> list = query.list();
        HibernateUtil.closeSession();
        if(list.isEmpty()){
            return false;
        }
    //  System.out.println(list.get(0).toString());
        return true;
    }

    //验证用户名是否存在
    @Override
    public boolean isvalidateAdminName(String username) {
        Session session = HibernateUtil.currentSession();
        Transaction tx = session.beginTransaction();
        String getSql = "from User as p where p.username= ?1";
        Query query = session.createQuery(getSql);
        query.setParameter(1,username);
        List<User> list = query.list();
        HibernateUtil.closeSession();
        if(list.isEmpty()){
            return true;
        }
        //  System.out.println(list.get(0).toString());
        return false;
    }

    //增加用户
    @Override
    public void addUser(User user) {
        Session session = HibernateUtil.currentSession();
        Transaction tx = session.beginTransaction();
        session.save(user);
        tx.commit();
        HibernateUtil.closeSession();
    }
}
