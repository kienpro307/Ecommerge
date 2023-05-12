package com.educative.ecommerce.controller;

import com.educative.ecommerce.dto.AuthenticationTokenDto;
import com.educative.ecommerce.exceptions.CustomException;
import com.educative.ecommerce.model.AuthenticationToken;
import com.educative.ecommerce.model.User;
import com.educative.ecommerce.repository.UserRepository;
import com.educative.ecommerce.service.AuthenticationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.Optional;

@RestController
@RequestMapping("/token")
public class AuthenticationController {
    @Autowired
    private AuthenticationService authenticationService;

    @Autowired
    private UserRepository userRepository;

    @GetMapping("")
    private AuthenticationTokenDto getToken(@RequestParam("user-id") Integer userId)
    throws CustomException {
        Optional<User> optionalUser = userRepository.findById(userId);
        if (!optionalUser.isPresent())
            throw new CustomException("user id is invalid!");

        User user = optionalUser.get();
        AuthenticationToken authenticationToken = authenticationService.getToken(user);
        return new AuthenticationTokenDto(authenticationToken);
    }

}
