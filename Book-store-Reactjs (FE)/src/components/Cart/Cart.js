import React from "react";
import { Container, Typography, Button, Grid } from "@material-ui/core";
import { Link } from "react-router-dom";

import CartItem from "./CartItem/CartItem";
import useStyles from "./styles";

const Cart = ({ cart, onRemoveFromCart, onCheckOut }) => {
  const classes = useStyles();

  const renderEmptyCart = () => (
    <Typography variant="subtitle1">
      Bạn không có sản phẩm trong giỏ hàng,
      <Link className={classes.link} to="/">
        {" "}
        bắt đầu mua sắm nào
      </Link>
      !
    </Typography>
  );

  const renderCart = () => (
    <>
      <Grid container spacing={4}>
        {cart.map((cartItem) => (
          <Grid item xs={12} sm={4} key={cartItem.id}>
            <CartItem cartItem={cartItem} onRemoveFromCart={onRemoveFromCart} />
          </Grid>
        ))}
      </Grid>
      <div className={classes.cardDetails}>
        <Typography variant="h5">
          Tổng giá tiền:{" "}
          <b>{cart.reduce((acc, curr) => acc + curr.price, 0)} đ</b>
        </Typography>
        <div>
          <Button
            className={classes.checkoutButton}
            size="large"
            type="button"
            variant="contained"
            style={{ backgroundColor: "#24729e" }}
            onClick={onCheckOut}
          >
            Thanh toán
          </Button>
        </div>
      </div>
    </>
  );

  return (
    <Container>
      <div className={classes.toolbar} />
      <Typography className={classes.title} variant="h5" gutterBottom>
        <b>Giỏ hàng của bạn</b>
      </Typography>
      <hr />
      {cart.length === 0 ? renderEmptyCart() : renderCart()}
    </Container>
  );
};

export default Cart;
