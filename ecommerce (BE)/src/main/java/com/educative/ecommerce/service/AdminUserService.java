package com.educative.ecommerce.service;

import com.educative.ecommerce.dto.AdminUserDto;
import com.educative.ecommerce.dto.ResponseDto;
import com.educative.ecommerce.dto.user.SignInReponseDto;
import com.educative.ecommerce.exceptions.CustomException;
import com.educative.ecommerce.model.AdminUser;
import com.educative.ecommerce.repository.AdminUserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import javax.xml.bind.DatatypeConverter;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Objects;

@Service
public class AdminUserService {
    @Autowired
    AdminUserRepository adminUserRepository;

    @Autowired
    AuthenticationService authenticationService;

    private String hashPassword(String password) throws NoSuchAlgorithmException {
        MessageDigest md = MessageDigest.getInstance("MD5");
        md.update(password.getBytes());
        byte[] digest = md.digest();
        return DatatypeConverter.printHexBinary(digest).toUpperCase();
    }

    @Transactional
    public ResponseDto signUp(AdminUserDto adminUserDto) {
        if (Objects.nonNull(adminUserRepository.findByEmail(adminUserDto.getEmail())))
            throw new CustomException("this admin user already present!");

        String encryptedPassword = adminUserDto.getPassword();
        try {
            encryptedPassword = hashPassword(adminUserDto.getPassword());
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        }

        AdminUser adminUser = new AdminUser(adminUserDto.getEmail(), encryptedPassword);
        adminUserRepository.save(adminUser);

        return new ResponseDto("success", "admin account created succesfully!");
    }

    public SignInReponseDto signIn(AdminUserDto adminUserDto) {
        AdminUser adminUser = adminUserRepository.findByEmail(adminUserDto.getEmail());

        if (Objects.isNull(adminUser)) {
            return new SignInReponseDto("wrong", "");
        }

        try {
            if (!adminUser.getPassword().equals(hashPassword(adminUserDto.getPassword()))) {
                return new SignInReponseDto("wrong", "");
            }
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        }

        if (Objects.isNull(adminUser.getToken())) {
            throw new CustomException("token is not present");
        }

        return new SignInReponseDto("success", adminUser.getToken());
    }
}
