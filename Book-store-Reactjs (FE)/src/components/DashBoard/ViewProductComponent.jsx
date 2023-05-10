import React, { Component } from 'react'
import ProductService from './ProductService'
import "./DashBoard.css";

class ViewProductComponent extends Component {
    constructor(props) {
        super(props)

        this.state = {
            id: this.props.match.params.id,
            product: {}
        }
    }

    componentDidMount(){
        ProductService.getProductById(this.state.id).then( res => {
            this.setState({product: res.data});
        })
    }

    render() {
        return (
            <div className= "content">
                <br></br>
                <div className = "card col-md-6 offset-md-3">
                    <h3 className = "text-center"> Xem sản phẩm</h3>
                    <div className = "card-body">
                        <div className = "row">
                            <label> Tên sản phẩm </label>
                            <div> { this.state.product.name }</div>
                        </div>
                        <div className = "row">
                            <label> Tác giả </label>
                            <div> { this.state.product.author }</div>
                        </div>
                        <div className = "row">
                            <label> Mô tả </label>
                            <div> { this.state.product.description }</div>
                        </div>
                        <div className = "row">
                            <label> Ảnh </label>
                            <div> { this.state.product.imageUrl }</div>
                        </div>
                        <div className = "row">
                            <label> Giá </label>
                            <div> { this.state.product.price }</div>
                        </div>
                    </div>

                </div>
            </div>
        )
    }
}

export default ViewProductComponent
