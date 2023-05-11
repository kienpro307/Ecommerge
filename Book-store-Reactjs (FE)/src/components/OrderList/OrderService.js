import axios from "axios";

const PRODUCT_API_BASE_URL = "http://localhost:8080/api/v1/orders";

class OrderService {
  getOrders() {
    return axios.get(PRODUCT_API_BASE_URL);
  }

  deleteOrder(orderId) {
    return axios.delete(PRODUCT_API_BASE_URL + "/" + orderId);
  }
}

export default new OrderService();
