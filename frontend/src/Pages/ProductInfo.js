import React from 'react'
import classes from "./ProductInfo.module.css"
import {products} from "../components/Store/data"
import {useParams} from "react-router-dom"

const ProductInfo = () => {
    const {id} = useParams("id")
    console.log(id)
    let product_arr = products.filter(prod => prod.id == id)
    const {title,img,info} = product_arr[0]
    return (
        <div className={classes["product-info-container"]}>
        <div className={classes["product-info"]}>
            <div className={classes["img-container"]}>
                <img alt={title} src={img} />
            </div>
            <div className={classes["product-desc"]}>
                <h2>{title}</h2>
                <p>{info}</p>
                <div className={classes["change-amount"]}>
                    <button className={classes["remove-btn"]}>-</button>
                    <span className={classes["quantity"]}>2</span>
                    <button className={classes["add-btn"]}>+</button>
                </div>
                <button className={classes["add-to-cart"]}>add to cart</button>
            </div>
        </div>
        </div>
    )
}

export default ProductInfo
