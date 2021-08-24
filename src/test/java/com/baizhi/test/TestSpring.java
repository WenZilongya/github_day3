package com.baizhi.test;

import com.baizhi.entity.User;
import com.baizhi.service.UserService;
import org.junit.Test;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

public class TestSpring {
    @Test
    public void selectAll(){
        ClassPathXmlApplicationContext applicationContext = new ClassPathXmlApplicationContext("spring.xml");

        UserService userService = (UserService) applicationContext.getBean("userService");

        List<User> userList = userService.selectAll();

        for (User user : userList) {
            System.out.println(user);
        }
    }
}
