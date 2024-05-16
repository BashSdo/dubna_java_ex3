package org.example.service;

import org.example.dao.UserDao;
import org.example.model.User;

import java.util.List;

public class UserService {
    private UserDao userDao = new UserDao();

    public UserService() {
    }

    public void createUser(String name, String email) {
        var user = new User(name, email);
        userDao.save(user);
    }

    public void deleteUser(Long id) {
        var user = userDao.findById(id);
        userDao.delete(user);
    }

    public User getUser(Long id) {
        return userDao.findById(id);
    }

    public List<User> getUsers() {
        return userDao.findAll();
    }
}