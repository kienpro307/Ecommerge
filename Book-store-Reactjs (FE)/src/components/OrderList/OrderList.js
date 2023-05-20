import React, { Component } from "react";
import OrderService from "./OrderService";
import "./OrderList.css";

class OrderList extends Component {
  constructor(props) {
    super(props);

    this.state = {
      orders: [],
    };
    this.deleteOrder = this.deleteOrder.bind(this);
  }

  deleteOrder(id) {
    OrderService.deleteOrder(id).then((res) => {
      this.setState({
        orders: this.state.orders.filter((order) => order.id !== id),
      });
    });
  }

  componentDidMount() {
    OrderService.getOrders().then((res) => {
      this.setState({ orders: res.data });
    });
  }

  render() {
    return (
      <div className="content">
        <h2 className="text-center">Danh sách đơn hàng</h2>
        <br></br>
        <div className="row-order">
          <table className="table table-striped table-bordered">
            <thead>
              <tr>
                <th> Tên sách</th>
                <th> Ảnh sản phẩm</th>
                <th> Giá</th>
                <th> Tên khách hàng</th>
                <th> Địa chỉ</th>
                <th> Số điện thoại</th>
                <th> Thao tác</th>
              </tr>
            </thead>
            <tbody>
              {this.state.orders.map((order) => (
                <tr key={order.id}>
                  <td> {order.name} </td>
                  <td>
                    <img src={order.imageUrl} alt={order.name} />
                  </td>
                  <td> {order.price}</td>
                  <td> {order.userFullName}</td>
                  <td> {order.userAddress}</td>
                  <td> {"0" + order.userPhoneNumber}</td>
                  <td>
                    <button
                      onClick={() => this.deleteOrder(order.id)}
                      className="btn btn-success"
                    >
                      Xong
                    </button>
                  </td>
                </tr>
              ))}
            </tbody>
          </table>
        </div>
      </div>
    );
  }
}

export default OrderList;
