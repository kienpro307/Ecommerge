import React from "react";
import {
  AppBar,
  Toolbar,
  IconButton,
  Badge,
  Typography,
} from "@material-ui/core";
import { ShoppingCart } from "@material-ui/icons";
import { Link, useLocation, NavLink } from "react-router-dom";
import logo from "../../assets/circles.png";
import useStyles from "./styles";
import "./Navbar.css";

const Navbar = (props) => {
  const {
    totalItems,
    token,
    setToken,
    tokenAdmin,
    setTokenAdmin,
    handleLogout,
  } = props;
  const classes = useStyles();
  const location = useLocation();

  const handleLogoutClick = () => {
    setToken("");
    setTokenAdmin("");
    handleLogout();
    console.log(">>> tokenAdmin1:", tokenAdmin);
  };

  return (
    <div>
      <AppBar position="fixed" className={classes.appBar} color="inherit">
        <Toolbar>
          <Typography
            component={Link}
            to="/"
            variant="h4"
            className={classes.title}
            color="inherit"
          >
            <img
              src={logo}
              alt="Book Store App"
              height="70px"
              className={classes.image}
            />
            <strong>SachHay</strong>
          </Typography>

          <div className={classes.grow} />
          {(location.pathname === "/" ||
            location.pathname.includes("/product-view/")) &&
            token !== "" && (
              <div className={classes.button}>
                <IconButton
                  component={Link}
                  to="/cart"
                  aria-label="Show cart items"
                  color="inherit"
                >
                  <Badge badgeContent={totalItems} color="secondary">
                    <ShoppingCart />
                  </Badge>
                </IconButton>
              </div>
            )}
          {console.log(">>> tokenAdmin2:", tokenAdmin)}
          {token === "" && tokenAdmin === "" ? (
            <>
              <NavLink
                exact
                to="/login/admin"
                className="sign"
                activeClassName="active"
              >
                Quản trị viên
              </NavLink>
              <NavLink
                exact
                to="/login/user"
                className="sign"
                activeClassName="active"
              >
                Đăng nhập
              </NavLink>
              <NavLink
                exact
                to="/register"
                className="sign sign-register"
                activeClassName="active"
              >
                Đăng ký
              </NavLink>
            </>
          ) : (
            <>
              {tokenAdmin !== "" ? (
                <NavLink
                  exact
                  to="/products"
                  className="sign"
                  activeClassName="active"
                >
                  Quản trị viên
                </NavLink>
              ) : (
                <NavLink
                  exact
                  to="/login/admin"
                  className="sign"
                  activeClassName="active"
                >
                  Quản trị viên
                </NavLink>
              )}
              <NavLink
                exact
                to="/"
                className="sign"
                activeClassName="active"
                onClick={handleLogoutClick}
              >
                Đăng xuất
              </NavLink>
            </>
          )}
        </Toolbar>
      </AppBar>
    </div>
  );
};

export default Navbar;
