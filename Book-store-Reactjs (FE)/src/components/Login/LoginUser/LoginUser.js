import React, { useState } from "react";

import Form from "react-bootstrap/Form";

import Button from "react-bootstrap/Button";

import "../Login.css";

import logo from "../../../assets/circles.png";

import axios from "axios";

export default function LoginUser() {
  const [email, setEmail] = useState("");

  const [password, setPassword] = useState("");

  function validateForm() {
    return email.length > 0 && password.length > 0;
  }

  // function handleSubmit(event) {
  //   event.preventDefault();
  // }

  const handleSubmit = async (event) => {
    event.preventDefault();
    try {
      const response = await axios.post("http://localhost:8080/user/signin", {
        email: email,
        password: password,
      });
      console.log(response.data); // Xử lý data trả về từ backend
    } catch (error) {
      console.error(error);
    }
  };

  return (
    <div className="Login">
      <div className="Title">
        <h1 style={{ paddingBottom: "40px", paddingRight: "220px" }}>
          Đăng nhập
        </h1>
        <img src={logo} height="40px" />
      </div>
      <Form onSubmit={handleSubmit}>
        <Form.Group size="lg" controlId="email" style={{ margin: "15px 0" }}>
          <Form.Label>Tên đăng nhập</Form.Label>

          <Form.Control
            autoFocus
            type="text"
            value={email}
            onChange={(e) => setEmail(e.target.value)}
            style={{ width: "300px" }}
          />
        </Form.Group>

        <Form.Group size="lg" controlId="password" style={{ margin: "15px 0" }}>
          <Form.Label>Mật khẩu</Form.Label>

          <Form.Control
            type="password"
            value={password}
            onChange={(e) => setPassword(e.target.value)}
          />
        </Form.Group>

        <Button
          block
          size="lg"
          type="submit"
          disabled={!validateForm()}
          style={{ margin: "auto", paddingTop: "10px" }}
        >
          Đăng nhập
        </Button>
      </Form>
    </div>
  );
}
