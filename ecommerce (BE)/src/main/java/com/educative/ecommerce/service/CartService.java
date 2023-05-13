package com.educative.ecommerce.service;

import com.educative.ecommerce.dto.cart.CartDto;
import com.educative.ecommerce.dto.cart.CartItemDto;
import com.educative.ecommerce.exceptions.CustomException;
import com.educative.ecommerce.model.Cart;
import com.educative.ecommerce.model.Product;
import com.educative.ecommerce.model.User;
import com.educative.ecommerce.repository.CartRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Optional;

@Service
public class CartService {

    @Autowired
    ProductService productService;

    @Autowired
    CartRepository cartRepository;

    public void addCart(Product product, User user) {

        Cart cart = new Cart();
        cart.setName(product.getName());
        cart.setImageUrl(product.getImageURL());
        cart.setCreatedDate(new Date());
        cart.setDescription(product.getDescription());
        cart.setUser(user);
        cart.setPrice(product.getPrice());
        cart.setIsBought(0);

        // save the cart
        cartRepository.save(cart);

    }

    public List<CartDto> listCartItems(User user, boolean isBought) {
        List<Cart> cartList = cartRepository.findAllByUserOrderByCreatedDateDesc(user);

        List<CartDto> cartDtoList = new ArrayList<>();

        for (Cart cart : cartList)
            if ((cart.getIsBought() == 0 && !isBought) || (isBought && cart.getIsBought() != 0)) {
                CartDto cartDto = new CartDto();
                cartDto.setId(cart.getId());
                cartDto.setName(cart.getName());
                cartDto.setImageUrl(cart.getImageUrl());
                cartDto.setDescription(cart.getDescription());
                cartDto.setPrice(cart.getPrice());
                cartDto.setIsBought(cart.getIsBought());

                cartDtoList.add(cartDto);
            }

        return cartDtoList;
    }

    public List<CartItemDto> getAllCarts() {
        List<Cart> cartList = cartRepository.findAll();

        List<CartItemDto> cartItemDtoList = new ArrayList<>();
        for (Cart cart: cartList) {
            CartItemDto cartItemDto = new CartItemDto();
            cartItemDto.setId(cart.getId());
            cartItemDto.setName(cart.getName());
            cartItemDto.setImageUrl(cart.getImageUrl());
            cartItemDto.setDescription(cart.getDescription());
            cartItemDto.setPrice(cart.getPrice());
            cartItemDto.setIsBought(cart.getIsBought());
            cartItemDto.setUserId(cart.getUser().getId());

            cartItemDtoList.add(cartItemDto);
        }

        return cartItemDtoList;
    }

    public void deleteCartItem(Integer cartItemId, User user) {
        // the item id belongs to user

        Optional<Cart> optionalCart = cartRepository.findById(cartItemId);

        if (!optionalCart.isPresent()) {
            throw new CustomException("cart item id is invalid: " + cartItemId);
        }

        Cart cart = optionalCart.get();

        if (cart.getUser() != user) {
            throw new CustomException("cart item does not belong to user: " + cartItemId);
        }

        cartRepository.delete(cart);
    }

    public void deleteCartOnAdmin(Integer cartId) {
        Optional<Cart> optionalCart = cartRepository.findById(cartId);

        if (!optionalCart.isPresent()) {
            throw new CustomException("cart item id is invalid: " + cartId);
        }

        Cart cart = optionalCart.get();
        cartRepository.delete(cart);
    }

    public void checkoutCart(Integer cartId, User user) {
        Optional<Cart> optionalCart = cartRepository.findById(cartId);

        if (!optionalCart.isPresent()) {
            throw new CustomException("cart item id is invalid: " + cartId);
        }

        Cart cart = optionalCart.get();

        if (cart.getUser() != user) {
            throw new CustomException("cart item does not belong to user: " + cartId);
        }

        cart.setIsBought(1);
        cartRepository.save(cart);
    }
}
