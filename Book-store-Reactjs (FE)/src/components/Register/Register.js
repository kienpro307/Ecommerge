import React, { useState } from "react";

import Form from "react-bootstrap/Form";

import Button from "react-bootstrap/Button";

import "./Register.css";

import logo from "../../assets/circles.png";

import axios from "axios";

import { useHistory } from "react-router-dom";

export default function Register() {
  const [email, setEmail] = useState("");

  const [password, setPassword] = useState("");

  const [firstName, setFirstName] = useState("");

  const [lastName, setLastName] = useState("");

  const [phoneNumber, setPhoneNumber] = useState("");

  const [address, setAddress] = useState("");

  const history = useHistory();

  function validateForm() {
    return (
      email.length > 0 &&
      password.length > 0 &&
      firstName.length > 0 &&
      lastName.length > 0 &&
      phoneNumber.length > 0 &&
      address.length > 0
    );
  }

  const handleSubmit = async (event) => {
    event.preventDefault();
    try {
      const response = await axios.post("http://localhost:8080/user/signup", {
        firstName: firstName,
        lastName: lastName,
        email: email,
        password: password,
        phoneNumber: phoneNumber,
        address: address,
      });
      console.log(response.data); // Xử lý data trả về từ backend
      if (response.data.status === "success") {
        alert("Đăng ký thành công");
        history.push("/");
      } else {
        alert("Đăng ký không thành công");
      }
    } catch (error) {
      console.error(error);
    }
  };

  return (
    <div className="Register">
      <div className="Title">
        <h1 style={{ paddingRight: "220px" }}>Đăng ký</h1>
        <img src={logo} height="40px" />
      </div>
      <Form onSubmit={handleSubmit}>
        <Form.Group
          size="lg"
          controlId="firstName"
          style={{ margin: "15px 0" }}
        >
          <Form.Label>Tên</Form.Label>

          <Form.Control
            autoFocus
            type="text"
            value={firstName}
            onChange={(e) => setFirstName(e.target.value)}
            style={{ width: "400px" }}
          />
        </Form.Group>

        <Form.Group size="lg" controlId="lastName" style={{ margin: "15px 0" }}>
          <Form.Label>Họ đệm</Form.Label>

          <Form.Control
            autoFocus
            type="text"
            value={lastName}
            onChange={(e) => setLastName(e.target.value)}
          />
        </Form.Group>
        <Form.Group
          size="lg"
          controlId="phoneNumber"
          style={{ margin: "15px 0" }}
        >
          <Form.Label>Số điện thoại</Form.Label>

          <Form.Control
            autoFocus
            type="tel"
            value={phoneNumber}
            onChange={(e) => setPhoneNumber(e.target.value)}
          />
          <Form.Group
            size="lg"
            controlId="address"
            style={{ margin: "15px 0" }}
          >
            <Form.Label>Địa chỉ</Form.Label>

            <Form.Control
              autoFocus
              type="text"
              value={address}
              onChange={(e) => setAddress(e.target.value)}
            />
          </Form.Group>
        </Form.Group>
        <Form.Group size="lg" controlId="email" style={{ margin: "15px 0" }}>
          <Form.Label>Tên đăng nhập</Form.Label>

          <Form.Control
            autoFocus
            type="text"
            value={email}
            onChange={(e) => setEmail(e.target.value)}
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
          Đăng ký
        </Button>
      </Form>
    </div>
  );
}
