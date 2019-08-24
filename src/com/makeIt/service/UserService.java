package com.makeIt.service;


import com.makeIt.bean.User;

public interface UserService {
    boolean isvalidateAdmin(User user);
    boolean register(User user);
}
