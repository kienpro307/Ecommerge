package com.educative.ecommerce.dto.cart;

public class CartItemDto extends CartDto {
    private Integer userId;

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }
}
