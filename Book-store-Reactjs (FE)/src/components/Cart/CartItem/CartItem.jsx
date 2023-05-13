import React from 'react';
import { Typography, Button, Card, CardActions, CardContent, CardMedia } from '@material-ui/core';

import useStyles from './styles';

const CartItem = ({ cartItem, onRemoveFromCart }) => {
  const classes = useStyles();

  const handleRemoveFromCart = () => onRemoveFromCart(cartItem.id);

  return (
    <Card className="cart-item">
      <CardMedia image={cartItem.imageUrl} alt={cartItem.name} className={classes.media} />
      <CardContent className={classes.cardContent}>
       <div className={classes.cardContent}>
          <Typography variant="h9" noWrap>
            <b noWrap>{cartItem.name}</b>
          </Typography>

          <b style={{ marginTop: "30px", color: "red" }} noWrap>{cartItem.price}đ</b>
        </div>
      </CardContent>
      <CardActions className={classes.cardActions}>
        <Button className={classes.button} variant="contained" type="button" color='secondary' onClick={() => handleRemoveFromCart()}>Xóa</Button>
      </CardActions>
    </Card>
  );
};

export default CartItem;
