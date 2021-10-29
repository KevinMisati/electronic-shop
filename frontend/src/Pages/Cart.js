import React from 'react'
import classes from "./Cart.module.css"
import SingleProduct from '../components/Cart/SingleProduct'
import CheckOut from '../components/Cart/CheckOut'
const Cart = () => {
    return (
        <div className={classes["cart-container"]}>
            
            <div className={classes["cart"]}>
                <h1>Shopping Cart</h1>
                <div>
                <div className={classes["products"]}>
                    <SingleProduct />
                </div>
                <CheckOut />
            </div>
        </div>
    </div>
    )
}

export default Cart
