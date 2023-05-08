import React from "react";
import { MDBCol, MDBContainer, MDBRow, MDBFooter } from "mdbreact";
import logo from "../../assets/circles.png";
import useStyles from "./styles";

const Footer = () => {
  const classes = useStyles();

  return (
    <div className={classes.Footers}>
      <MDBFooter color="unique-color-dark" className="font-small pt-4 mt-4">
        <MDBContainer className="text-center text-md-left">
          <MDBRow className="text-center text-md-left mt-3 pb-3">
            <MDBCol md="3" lg="3" xl="4" className="mx-auto mt-3">
              <h6 className="text-uppercase mb-4 font-weight-bold">
                <img src={logo} alt="Book Store App" height="50px" />
                <strong>SachHay</strong>
              </h6>
              <p>
                SachHay là một ứng dụng web React trực tuyến, trong đó khách
                hàng có thể mua sách trực tuyến. Thông qua cửa hàng sách này,
                người dùng có thể tìm kiếm một cuốn sách bằng tiêu đề của nó,
                sau đó có thể thêm vào giỏ hàng và cuối cùng là thanh toán bằng
                giao dịch thẻ tín dụng.
              </p>
            </MDBCol>
            <hr className="w-100 clearfix d-md-none" />
            <MDBCol md="2" lg="2" xl="2" className="mx-auto mt-3">
              <h6 className="text-uppercase mb-4 font-weight-bold">
                <strong>Sản phẩm</strong>
              </h6>
              <p>
                <a href="#">SachHay</a>
              </p>
            </MDBCol>

            <hr className="w-100 clearfix d-md-none" />
            <MDBCol md="4" lg="3" xl="3" className="mx-auto mt-3">
              <h6 className="text-uppercase mb-4 font-weight-bold">
                <strong>Liên hệ</strong>
              </h6>
              <p>
                <i className="fa fa-envelope mr-3" /> kien3072003@gmail.com
              </p>
              <p>
                <i className="fa fa-phone mr-3" /> +84 0866112916
              </p>
              <p>
                <i className="fa fa-home mr-3" />
                Xuân Thủy, Cầu Giấy, Hà Nội
              </p>
            </MDBCol>
          </MDBRow>
          <hr />
          <MDBRow className="d-flex align-items-center">
            <MDBCol md="8" lg="8">
              <p className="text-center text-md-left grey-text">
                &copy; {new Date().getFullYear()} Made by
                <a href=""> Kien & Nguyen </a>
              </p>
            </MDBCol>
            <MDBCol md="4" lg="4" className="ml-lg-0">
              <div className="text-center text-md-right">
                <ul className="list-unstyled list-inline">
                  <li className="list-inline-item">
                    <a
                      className="btn-floating btn-sm rgba-white-slight mx-1"
                      href="https://github.com/kienpro307"
                    >
                      <i className="fab fa-github" />
                    </a>
                  </li>

                  <li className="list-inline-item">
                    <a
                      className="btn-floating btn-sm rgba-white-slight mx-1"
                      href="https://www.facebook.com/KienAlone/"
                    >
                      <i className="fab fa-facebook-f" />
                    </a>
                  </li>
                </ul>
              </div>
            </MDBCol>
          </MDBRow>
        </MDBContainer>
      </MDBFooter>
    </div>
  );
};

export default Footer;
