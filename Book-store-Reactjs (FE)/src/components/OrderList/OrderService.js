import axios from "axios";

const PRODUCT_API_BASE_URL = "http://localhost:8080/api/v1/orders";

class OrderService {
  getOrders() {
    return axios.get("http://localhost:8080/cart/all-carts");
  }

  deleteOrder(orderId) {
    return axios.delete(`http://localhost:8080/cart/admin-delete/${orderId}`);
  }
}

export default new OrderService();
