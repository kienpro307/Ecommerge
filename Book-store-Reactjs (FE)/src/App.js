import React, { useState, useEffect } from "react";
import { CssBaseline } from "@material-ui/core";
import Products from "./components/Products/Products";
import Navbar from "./components/Navbar/Navbar";
import Cart from "./components/Cart/Cart";
import Checkout from "./components/CheckoutForm/Checkout/Checkout";
import ProductView from "./components/ProductView/ProductView";
import Footer from "./components/Footer/Footer";
import { BrowserRouter as Router, Switch, Route } from "react-router-dom";
import "bootstrap/dist/css/bootstrap.min.css";
import "mdbreact/dist/css/mdb.css";
import "@fortawesome/fontawesome-free/css/all.min.css";
import LoginUser from "./components/Login/LoginUser/LoginUser";
import LoginAdmin from "./components/Login/LoginAdmin/LoginAdmin";
import Register from "./components/Register/Register";
import ListProductComponent from "./components/DashBoard/ListProductComponent";
import CreateProductComponent from "./components/DashBoard/CreateProductComponent";
import ViewProductComponent from "./components/DashBoard/ViewProductComponent";
import OrderList from "./components/OrderList/OrderList";
import axios from "axios";

const App = () => {
  const [mobileOpen, setMobileOpen] = React.useState(false);
  const [products, setProducts] = useState([]);
  const [cart, setCart] = useState([]);
  const [order, setOrder] = useState({});
  const [errorMessage, setErrorMessage] = useState("");
  const [token, setToken] = useState("");
  const [tokenAdmin, setTokenAdmin] = useState("");

  const fetchProducts = async () => {
    await fetch("http://localhost:8080/product/")
      .then((res) => res.json())
      .then((data) => {
        setProducts(data);
        console.log(">>> data product:", data);
      })
      .catch(console.log);
  };

  const fetchCart = async () => {
    try {
      const response = await fetch(
        `http://localhost:8080/cart/cart-list?token=${token}`
      );
      const data = await response.json();
      setCart(data);
      console.log(">>> data cart:", data);
    } catch (error) {
      console.log(error);
    }
  };

  const handleAddToCart = async (productId) => {
    try {
      const response = await fetch(
        `http://localhost:8080/cart/add?productId=${productId}&token=${token}`,
        {
          method: "POST",
          headers: {
            "Content-Type": "application/json",
          },
        }
      );
      console.log(">>> success", response);
      if (token === "") {
        alert(
          "Thêm sản phẩm vào giỏ hàng thất bại!" +
            "\n" +
            "Vui lòng đăng nhập để có thể đặt hàng"
        );
      } else {
        alert("Thêm vào giỏ hàng thành công!");
      }
    } catch (error) {
      console.error(error);
    }
  };

  const handleRemoveFromCart = async (CartItemId) => {
    try {
      const response = await axios.delete(
        `http://localhost:8080/cart/admin-delete/${CartItemId}`
      );
      console.log(response.data); // In ra thông tin mặt hàng đã xóa được
      fetchCart();
    } catch (error) {
      console.error(error);
    }
  };

  const handleLogout = () => {
    setToken("");
    setTokenAdmin("");
  };

  const handleCaptureCheckout = async (checkoutTokenId, newOrder) => {
    // try {
    //   const incomingOrder = await commerce.checkout.capture(
    //     checkoutTokenId,
    //     newOrder
    //   );
    //   setOrder(incomingOrder);
    //   refreshCart();
    // } catch (error) {
    //   setErrorMessage(error.data.error.message);
    // }
  };

  useEffect(() => {
    fetchProducts();
    fetchCart();
  }, [token]);

  const handleDrawerToggle = () => setMobileOpen(!mobileOpen);

  return (
    <div>
      <div
        className="wrapper"
        style={{ minHeight: "100vh", marginBottom: "100px" }}
      >
        <Router>
          <div style={{ display: "flex" }}>
            <CssBaseline />
            <Navbar
              totalItems={cart.total_items}
              token={token}
              setToken={setToken}
              tokenAdmin={tokenAdmin}
              setTokenAdmin={setTokenAdmin}
              handleDrawerToggle={handleDrawerToggle}
              handleLogout={handleLogout}
            />
            <Switch>
              <Route exact path="/">
                <Products
                  products={products}
                  onAddToCart={handleAddToCart}
                  handleUpdateCartQty
                />
              </Route>
              <Route exact path="/product-view/:id">
                <ProductView
                  onAddToCart={handleAddToCart}
                  handleUpdateCartQty
                />
              </Route>
              <Route exact path="/cart">
                <Cart
                  cart={cart}
                  token={token}
                  onRemoveFromCart={handleRemoveFromCart}
                />
              </Route>
              <Route path="/checkout" exact>
                <Checkout
                  cart={cart}
                  order={order}
                  onCaptureCheckout={handleCaptureCheckout}
                  error={errorMessage}
                />
              </Route>
              <Route exact path="/login/user">
                <LoginUser setToken={setToken} />
              </Route>
              <Route exact path="/login/admin">
                <LoginAdmin setTokenAdmin={setTokenAdmin} />
              </Route>
              <Route exact path="/register">
                <Register />
              </Route>
              <Route
                path="/products"
                exact
                component={ListProductComponent}
              ></Route>
              <Route
                path="/products/add-product/:id"
                render={(props) => <CreateProductComponent {...props} />}
              />
              <Route
                path="/products/view-product/:id"
                component={ViewProductComponent}
              ></Route>
              <Route path="/orders" exact>
                <OrderList />
              </Route>
            </Switch>
          </div>
        </Router>
      </div>
      <div
        style={{
          position: "relative",
          bottom: "0",
          width: "100%",
          textAlign: "center",
          lineHeight: "50px",
        }}
      ></div>
    </div>
  );
};

export default App;
