import React, { Component } from 'react'
import ProductService from './ProductService';
import "./DashBoard.css";

class CreateProductComponent extends Component {
    constructor(props) {
        super(props)

        this.state = {
            // step 2
            id: this.props.match.params.id,
            name: '',
            imageURL: '',
            price: '',
            description: '',
            author: '',
            categoryId: ''
        }
        this.changeNameHandler = this.changeNameHandler.bind(this);
        this.changeImageURLHandler = this.changeImageURLHandler.bind(this);
        this.changePriceHandler = this.changePriceHandler.bind(this);   
        this.changeDescriptionHandler = this.changeDescriptionHandler.bind(this);
        this.changeAuthorHandler = this.changeAuthorHandler.bind(this);
        this.changeCategoryIdHandler = this.changeCategoryIdHandler.bind(this);
        this.saveOrUpdateProduct = this.saveOrUpdateProduct.bind(this);
    }

    // step 3
    componentDidMount(){

        // step 4
        if(this.state.id === '_add'){
            return
        }else{
            ProductService.getProductById(this.state.id).then( (res) =>{
                let product = res.data;
                this.setState({name: product.name,
                    imageURL: product.imageURL,
                    price: product.price,
                    description: product.description,
                    author: product.author,
                    categoryId: product.categoryId
                });
            });
        }        
    }

    saveOrUpdateProduct = (e) => {
        e.preventDefault();
        let product = {name: this.state.name, imageURL: this.state.imageURL, price: this.state.price, description: this.state.description, author: this.state.author, categoryId: this.state.categoryId};
        console.log('product => ' + JSON.stringify(product));

        // step 5
        if(this.state.id === '_add'){
            ProductService.createProduct(product).then(res =>{
                this.props.history.push('/products');
            });
        }else{
            ProductService.updateProduct(product, this.state.id).then( res => {
                this.props.history.push('/products');
            }); 
        }
    }
    
    changeNameHandler= (event) => {
        this.setState({name: event.target.value});
    }

    changeImageURLHandler= (event) => {
        this.setState({imageURL: event.target.value});
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

    changeCategoryIdHandler= (event) => {
        this.setState({categoryId: event.target.value});
    }
    
    cancel(){
        this.props.history.push('/products');
    }

    getTitle(){
        if(this.state.id === '_add'){
            return <h3 className="text-center">Thêm sản phẩm</h3>
        }else{
            return <h3 className="text-center">Cập nhật sản phẩm</h3>
        }
    }
    render() {
        return (
            <div className= "content">
                <br></br>
                   <div className = "container">
                        <div className = "row">
                            <div className = "card col-md-6 offset-md-3 offset-md-3">
                                {
                                    this.getTitle()
                                }
                                <div className = "card-body">
                                    <form>
                                        <div className = "form-group">
                                            <label> Tên </label>
                                            <input placeholder="Tên sách..." name="name" className="form-control" 
                                                value={this.state.name} onChange={this.changeNameHandler}/>
                                        </div>
                                        <div className = "form-group">
                                            <label> Tác giả: </label>
                                            <input placeholder="Tác giả..." name="author" className="form-control" 
                                            value={this.state.author} onChange={this.changeAuthorHandler}/>
                                        </div>
                                        <div className = "form-group">
                                            <label> Mô tả: </label>
                                            <input placeholder="Mô tả..." name="description" className="form-control" 
                                                value={this.state.description} onChange={this.changeDescriptionHandler}/>
                                        </div>
                                        <div className = "form-group">
                                            <label> Thể loại </label>
                                            <input placeholder="Thể loại..." name="caegoryId" className="form-control" 
                                                value={this.state.categoryId} onChange={this.changeCategoryIdHandler}/>
                                        </div>
                                        <div className = "form-group">
                                            <label> Ảnh: </label>
                                            <input placeholder="Link ảnh..." name="imageURL" className="form-control" 
                                                value={this.state.imageURL} onChange={this.changeImageURLHandler}/>
                                        </div>
                                        <div className = "form-group">
                                            <label> Giá tiền: </label>
                                            <input placeholder="Giá tiền..." name="price" className="form-control" 
                                                value={this.state.price} onChange={this.changePriceHandler}/>
                                        </div>
                                

                                        <button className="btn btn-success" onClick={this.saveOrUpdateProduct}>Lưu</button>
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

export default CreateProductComponent
