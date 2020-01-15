package com.itdr.service.impl;

import com.itdr.common.ResponseCode;
import com.itdr.dao.UsersDao;
import com.itdr.pojo.Users;
import com.itdr.service.UserService;

public class UserSerciveImpl implements UserService {
    private UsersDao ud = new UsersDao();
    @Override
    public ResponseCode<Users> login(String username, String password) {
        //参数非空判断

        Users users = ud.selectByUsernameAndPassword(username,password);
        //返回值为null，说明用户不存在，登陆失败
        if (users == null){
            return ResponseCode.toDefeated("用户不存在！");
        }
        //返回成功
     return ResponseCode.toSuccess(users);

    }
    }

