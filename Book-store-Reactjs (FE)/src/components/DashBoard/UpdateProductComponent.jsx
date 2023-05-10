import React, { Component } from 'react'
import ProductService from './ProductService';
import "./DashBoard.css";

class UpdateProductComponent extends Component {
    constructor(props) {
        super(props)

        this.state = {
            id: this.props.match.params.id,
            name: '',
            imageUrl: '',
            price: '',
            description: '',
            author: ''
        }
        this.changeNameHandler = this.changeNameHandler.bind(this);
        this.changeImageUrlHandler = this.changeImageUrlHandler.bind(this);
        this.changePriceHandler = this.changePriceHandler.bind(this);
        this.changeDescriptionHandler = this.changeDescriptionHandler.bind(this);
        this.changeAuthorHandler = this.changeAuthorHandler.bind(this);
        this.updateProduct = this.updateProduct.bind(this);
    }

    componentDidMount(){
        ProductService.getProductById(this.state.id).then( (res) =>{
            let product = res.data;
            this.setState({
                    name: product.name,
                    imageUrl: product.imageUrl,
                    price: product.price,
                    description: product.description,
                    author: product.author
            });
        });
    }

    updateProduct = (e) => {
        e.preventDefault();
        let product = {name: this.state.name, imageUrl: this.state.imageUrl, price: this.state.price, description: this.state.description, author: this.state.author};
        console.log('product => ' + JSON.stringify(product));
        console.log('id => ' + JSON.stringify(this.state.id));
        ProductService.updateProduct(product, this.state.id).then( res => {
            this.props.history.push('/products');
        });
    }
    
    changeNameHandler= (event) => {
        this.setState({name: event.target.value});
    }

    changeImageUrlHandler= (event) => {
        this.setState({imageUrl: event.target.value});
    }

    changePriceHandler= (event) => {
        this.setState({price: event.target.value});
    }

    changeDescriptionHandler= (event) => {
        this.setState({description: event.target.value});
    }

    changeAuthorHandler= (event) => {
        this.setState({author: event.target.value});
    }

    cancel(){
        this.props.history.push('/products');
    }

    render() {
        return (
            <div className= "content">
                <br></br>
                   <div className = "container">
                        <div className = "row">
                            <div className = "card col-md-6 offset-md-3 offset-md-3">
                                <h3 className="text-center">Cập nhật sản phẩm</h3>
                                <div className = "card-body">
                                    <form>
                                        <div className = "form-group">
                                            <label> Tên </label>
                                            <input placeholder="name" name="name" className="form-control" 
                                                value={this.state.name} onChange={this.changeNameHandler}/>
                                        </div>
                                        <div className = "form-group">
                                            <label> Tác giả: </label>
                                            <input placeholder="tác giả" name="author" className="form-control" 
                                            value={this.state.author} onChange={this.changeAuthorHandler}/>
                                        </div>
                                        <div className = "form-group">
                                            <label> Mô tả: </label>
                                            <input placeholder="Mô tả" name="description" className="form-control" 
                                                value={this.state.description} onChange={this.changeDescriptionHandler}/>
                                        </div>
                                        <div className = "form-group">
                                            <label> Ảnh: </label>
                                            <input placeholder="link ảnh" name="imageUrl" className="form-control" 
                                                value={this.state.imageUrl} onChange={this.changeImageUrlHandler}/>
                                        </div>
                                        <div className = "form-group">
                                            <label> Giá tiền: </label>
                                            <input placeholder="Giá tiền" name="price" className="form-control" 
                                                value={this.state.price} onChange={this.changePriceHandler}/>
                                        </div>

                                        <button className="btn btn-success" onClick={this.updateProduct}>Lưu</button>
                                        <button className="btn btn-danger" onClick={this.cancel.bind(this)} style={{marginLeft: "10px"}}>Hủy</button>
                                    </form>
                                </div>
                            </div>
                        </div>

                   </div>
            </div>
        )
    }
}

export default UpdateProductComponent
