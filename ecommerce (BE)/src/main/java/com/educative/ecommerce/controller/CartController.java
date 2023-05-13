package com.educative.ecommerce.controller;

import com.educative.ecommerce.common.ApiResponse;
import com.educative.ecommerce.dto.cart.CartDto;
import com.educative.ecommerce.dto.cart.CartItemDto;
import com.educative.ecommerce.model.Product;
import com.educative.ecommerce.model.User;
import com.educative.ecommerce.service.AuthenticationService;
import com.educative.ecommerce.service.CartService;
import com.educative.ecommerce.service.ProductService;
import io.swagger.annotations.Api;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/cart")
public class CartController {

    @Autowired
    private CartService cartService;

    @Autowired
    private ProductService productService;

    @Autowired
    private AuthenticationService authenticationService;


    // post cart api
    @PostMapping("/add")
    public ResponseEntity<ApiResponse> addCart(@RequestParam("productId") Integer productId,
                                                 @RequestParam("token") String token) {
        // authenticate the token
        authenticationService.authenticate(token);

        // find the user
        User user = authenticationService.getUser(token);

        Product product = productService.findById(productId);

        cartService.addCart(product, user);

        return new ResponseEntity<>(new ApiResponse(true, "Added cart successfully!"), HttpStatus.CREATED);
    }

    // get all cart items for a user, which is not bought.
    @GetMapping("/cart-list")
    public ResponseEntity<List<CartDto>> getCartItems(@RequestParam("token") String token) {
        // authenticate the token
        authenticationService.authenticate(token);

        // find the user
        User user = authenticationService.getUser(token);

        // get cart items, isBought == false

        List<CartDto> cartDtoList = cartService.listCartItems(user, false);
        return new ResponseEntity<>(cartDtoList, HttpStatus.OK);
    }

    // get all cart items for a user, which is bought.
    @GetMapping("/order-list")
    public ResponseEntity<List<CartDto>> getOrderItems(@RequestParam("token") String token) {
        // authenticate the token
        authenticationService.authenticate(token);

        // find the user
        User user = authenticationService.getUser(token);

        // get order, isBought == true

        List<CartDto> cartDtoList = cartService.listCartItems(user, true);
        return new ResponseEntity<>(cartDtoList, HttpStatus.OK);
    }

    @GetMapping("/all-carts")
    public ResponseEntity<List<CartItemDto>> getAllCarts() {

        List<CartItemDto> cartItemDtoList = cartService.getAllCarts();
        return new ResponseEntity<>(cartItemDtoList, HttpStatus.OK);
    }

    @PostMapping("/checkout-cart/{cartItemId}")
    public ResponseEntity<ApiResponse> checkoutCart(@PathVariable("cartItemId") Integer itemId,
                                                    @RequestParam("token") String token) {
        authenticationService.authenticate(token);
        User user = authenticationService.getUser(token);

        cartService.checkoutCart(itemId, user);

        return new ResponseEntity<>(new ApiResponse(true, "This cart has been changed to an order, which will be bought!"),
                HttpStatus.OK);
    }

    // delete a cart item for a user

    @DeleteMapping("/delete/{cartItemId}")
    public ResponseEntity<ApiResponse> deleteCartItem(@PathVariable("cartItemId") Integer itemId,
                                                      @RequestParam("token") String token) {

        // authenticate the token
        authenticationService.authenticate(token);

        // find the user
        User user = authenticationService.getUser(token);

        cartService.deleteCartItem(itemId, user);

        return new ResponseEntity<>(new ApiResponse(true, "Item has been removed"), HttpStatus.OK);

    }

}
