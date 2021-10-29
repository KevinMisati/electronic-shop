import React from 'react'
import classes from "./SingleProduct.module.css"
const SingleProduct = () => {
    return (
        <div className={classes["single-product-container"]}>
            <div className={classes["single-product"]}>
                <div className={classes["img-container"]}>
                    <img src='https://cdn11.bigcommerce.com/s-9p889rxpkb/images/stencil/80w/products/384/1211/BLISS_Bright_Idea_Vitamin_C_MOISTURIZER_50ml_JAR_FINALupdated__91912.1635283806.jpg?c=2'></img>
                </div>
                <div className={classes["product-info-container"]}>
                <div className={classes["product-info"]}>
                    <h3>Bright Idea Moisturizer</h3>
                    <p>Vitamin C + Tri-Peptide Collagen Protecting & Brightening Moisturizer</p>
                </div>
                <div className={classes["change-amount"]}>
                    <button className={classes["remove-btn"]}>-</button>
                    <span className={classes["quantity"]}>2</span>
                    <button className={classes["add-btn"]}>+</button>
                </div>
                <div className={classes["price"]}>
                    48
                </div>
                <div className={classes["remove-product"]}>
                    <button>Remove</button>
                </div>
                </div>
            </div>
        </div>
    )
}

export default SingleProduct
