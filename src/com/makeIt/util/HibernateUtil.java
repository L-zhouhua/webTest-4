package com.makeIt.util;

import org.hibernate.*;
import org.hibernate.cfg.*;

public class HibernateUtil {
    public static final SessionFactory sessionFactory;
    static {
        try {
            Configuration configuration = new Configuration().configure();
            sessionFactory = configuration.buildSessionFactory();
        } catch (Throwable ex) {
            System.err.println("初始化sessionFactory失败." + ex);
            throw new ExceptionInInitializerError(ex);
        }
    }
    public static final ThreadLocal<Session> session = new ThreadLocal<Session>();

    public static Session currentSession() throws HibernateException {
        Session s = session.get();
        if (s == null) {
            s = sessionFactory.openSession();
            session.set(s);
        }
        return s;
    }

    public static void closeSession() throws HibernateException {
        Session s = session.get();
        if (s != null)
            s.close();
        session.set(null);
    }
}
