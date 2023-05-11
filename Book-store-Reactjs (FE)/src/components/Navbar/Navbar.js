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
import "./Navbar.css"

const Navbar = ({ totalItems }) => {
  const classes = useStyles();
  const location = useLocation();

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
          {location.pathname === "/" && (
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
        </Toolbar>
      </AppBar>
    </div>
  );
};

export default Navbar;
