import React, { Component } from 'react'
import ProductService from './ProductService'
import "./DashBoard.css";
import { CardMedia } from "@material-ui/core";

class ListProductComponent extends Component {
    constructor(props) {
        super(props)

        this.state = {
                products: []
        }
        this.addProduct = this.addProduct.bind(this);
        this.editProduct = this.editProduct.bind(this);
        this.deleteProduct = this.deleteProduct.bind(this);
    }

    deleteProduct(id){
        ProductService.deleteProduct(id).then( res => {
            this.setState({products: this.state.products.filter(product => product.id !== id)});
        });
    }
    viewProduct(id){
        this.props.history.push(`/products/view-product/${id}`);
    }
    editProduct(id){
        this.props.history.push(`/products/add-product/${id}`);
    }

    componentDidMount(){
        ProductService.getProducts().then((res) => {
            this.setState({ products: res.data});
        });
    }

    addProduct(){
        this.props.history.push('products/add-product/_add');
    }

    render() {
        return (
            <div className= "content">
                <h2 className="text-center">Danh sách sản phẩm</h2>
                 <div className = "row">
                    <button className="btn btn-primary" onClick={this.addProduct}> Thêm sản phẩm</button>
                 </div>
                 <br></br>
                 <div className = "row">
                        <table className = "table table-striped table-bordered">

                            <thead>
                                <tr>
                                    <th> Tên sách</th>
                                    <th> Tác giả</th>
                                    <th> Mô tả</th>
                                    <th> Ảnh</th>
                                    <th> Giá</th>
                                    <th> Thao tác</th>
                                </tr>
                            </thead>
                            <tbody>
                                {
                                    this.state.products.map(
                                        product => 
                                        <tr key = {product.id}>
                                             <td> {product.name} </td> 
                                             <td> {product.author} </td>  
                                             <td nowrap> {product.description} </td>  
                                            <td> <a href= {product.imageURL}><img src={product.imageURL} alt="Product Image" /> </a></td>
                                             <td> {product.price}</td>
                                             <td>
                                                 <button style={{marginLeft: "10px"}} onClick={ () => this.editProduct(product.id)} className="btn btn-info">Cập nhật </button>
                                                 <button style={{marginLeft: "10px"}} onClick={ () => this.deleteProduct(product.id)} className="btn btn-danger">Xóa </button>
                                                 <button style={{marginLeft: "10px"}} onClick={ () => this.viewProduct(product.id)} className="btn btn-info">Xem </button>
                                             </td>
                                        </tr>
                                  )
            
                                }
                                
                            </tbody>
                        </table>

                 </div>

            </div>
        )
    }
}

export default ListProductComponent
