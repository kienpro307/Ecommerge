import axios from "axios";

const PRODUCT_API_BASE_URL = "http://localhost:8080/product/";

class ProductService {
  getProducts() {
    return axios.get(PRODUCT_API_BASE_URL);
  }

  createProduct(product) {
    return axios.post("http://localhost:8080/product/add", product);
  }

  getProductById(productId) {
    return axios.get(PRODUCT_API_BASE_URL + "/" + productId);
  }

  updateProduct(product, productId) {
    return axios.post(
      `http://localhost:8080/product/update/${productId}`,
      product
    );
  }

  deleteProduct(productId) {
    return axios.delete(`http://localhost:8080/product/delete/${productId}`);
  }
}

export default new ProductService();
