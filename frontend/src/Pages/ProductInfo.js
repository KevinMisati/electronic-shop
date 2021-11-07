import React,{useState,useEffect,useContext} from 'react'
import classes from "./ProductInfo.module.css"
import {products} from "../components/Store/data"
import {useParams} from "react-router-dom"
import axiosInstance from '../axiosApi'
import AddToCartButton from '../components/Utilities/AddToCartButton'
import { CartContext } from '../Context'

const ProductInfo = () => {
    const [product,setProduct] = useState({})
    const {id} = useParams("id")

    const {add_to_cart} = useContext(CartContext)
    const handleItemIncrement = (id) => {
        add_to_cart(id)
    }

    useEffect(() => {
        axiosInstance.get(`products/${id}`)
        .then(resp => {
            setProduct(resp.data)
            console.log(resp.data)
        })
        .catch(error => {
            throw error
        })
    },[])

    
    
    const {title,img,info} = product
    return (
        <div className={classes["product-info-container"]}>
        <div className={classes["product-info"]}>
            <div className={classes["img-container"]}>
                <img alt={title} src={img} />
            </div>
            <div className={classes["product-desc"]}>
                <h2>{title}</h2>
                <p>{info}</p>
                {/* <div className={classes["change-amount"]}>
                    <button className={classes["remove-btn"]}>-</button>
                    <span className={classes["quantity"]}>2</span>
                    <button className={classes["add-btn"]}>+</button>
                </div> */}
                <div className={classes["add-btn"]} onClick={() => handleItemIncrement(id)}>
                    <AddToCartButton text="add to cart" />
                </div>
                
            </div>
        </div>
        </div>
    )
}

export default ProductInfo
