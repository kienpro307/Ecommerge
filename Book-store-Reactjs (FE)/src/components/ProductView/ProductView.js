import React from "react";
import {
  Container,
  Grid,
  Button,
  Typography,
} from "@material-ui/core";
import { AddShoppingCart } from "@material-ui/icons";
import { Link } from "react-router-dom";
import { useState, useEffect } from "react";
import "./style.css";
import { useLocation } from "react-router-dom";

const createMarkup = (text) => {
  return { __html: text };
};

const ProductView = () => {
  const location = useLocation();
  const onAddToCart = location.state?.onAddToCart;
  const [product, setProduct] = useState({});

  const fetchProduct = async (id) => {
    const response = await fetch(`http://localhost:8080/product/${id}`);
    const data = await response.json();
    const { name, author, description, imageURL, price } = data;
    setProduct({
      id,
      name,
      author,
      description,
      imageURL,
      price: price + "đ",
    });
  };

  useEffect(() => {
    const id = window.location.pathname.split("/");
    fetchProduct(id[2]);
  }, []);

  return (
    <Container className="product-view content">
      <Grid container>
        <Grid item xs={6} md={5} className="image-wrapper">
          <img src={product.imageURL} alt={product.name} />
        </Grid>
        <Grid item xs={6} md={7} className="text">
          <Typography variant="h2">
            <b>{product.name}</b>
          </Typography>
          <hr />
          <Typography
            variant="p"
            dangerouslySetInnerHTML={createMarkup(product.description)}
          />
          <Typography
            variant="h3"
            color="secondary"
            style={{ marginTop: "70px", marginBottom: "10px" }}
          >
            Giá: <b> {product.price} </b>{" "}
          </Typography>
          <br />
          <Grid container spacing={4}>
            <Grid item xs={12}>
              <Button
                variant="contained"
                size="large"
                className="custom-button"
                endIcon={<AddShoppingCart />}
                onClick={() => onAddToCart(product.id, 1)}
                style={{ marginRight: "10px", backgroundColor: "red" }}
              >
                <b>Thêm Vào Giỏ Hàng</b>
              </Button>

              <Button
                size="large"
                className="custom-button"
                component={Link}
                to="/"
              >
                Tiếp tục mua sắm
              </Button>
            </Grid>
          </Grid>
        </Grid>
      </Grid>
    </Container>
  );
};

export default ProductView;
