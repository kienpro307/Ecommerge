package com.educative.ecommerce.dto;

import com.educative.ecommerce.model.AuthenticationToken;

import java.util.Date;

public class AuthenticationTokenDto {
    private Integer userId;
    private String token;
    private Date createdDate;

    public AuthenticationTokenDto(AuthenticationToken authenticationToken) {
        userId = authenticationToken.getUser().getId();
        token = authenticationToken.getToken();
        createdDate = authenticationToken.getCreatedDate();
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getToken() {
        return token;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public Date getCreatedDate() {
        return createdDate;
    }

    public void setCreatedDate(Date createdDate) {
        this.createdDate = createdDate;
    }
}
