package com.makeIt.dao;

import com.makeIt.bean.User;

public interface UserDao {
    boolean isvalidateAdmin(User user);
    boolean isvalidateAdminName(String username);
    void addUser(User user);
}
