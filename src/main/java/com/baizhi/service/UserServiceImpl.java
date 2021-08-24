package com.baizhi.service;

import com.baizhi.dao.UserDAO;
import com.baizhi.entity.User;

import java.util.List;

public class UserServiceImpl implements UserService{


    private UserDAO userDAO;
    @Override
    public List<User> selectAll() {
        return userDAO.selectAll();
    }

    public void setUserDAO(UserDAO userDAO) {
        this.userDAO = userDAO;
    }
}
