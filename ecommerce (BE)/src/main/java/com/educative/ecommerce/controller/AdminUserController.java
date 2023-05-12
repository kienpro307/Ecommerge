package com.educative.ecommerce.controller;

import com.educative.ecommerce.dto.AdminUserDto;
import com.educative.ecommerce.dto.ResponseDto;
import com.educative.ecommerce.dto.user.SignInReponseDto;
import com.educative.ecommerce.service.AdminUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RequestMapping("administrator")
@RestController
public class AdminUserController {
    @Autowired
    AdminUserService adminUserService;

    @PostMapping("/signup")
    public ResponseDto signUp(@RequestBody AdminUserDto adminUserDto) {
        return adminUserService.signUp(adminUserDto);
    }

    @PostMapping("/signin")
    public SignInReponseDto signIn(@RequestBody AdminUserDto adminUserDto) {
        return adminUserService.signIn(adminUserDto);
    }
}
