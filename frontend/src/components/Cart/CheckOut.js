import React from 'react'
import classes from "./CheckOut.module.css"

const CheckOut = () => {
    return (
        <div className={classes["checkout-container"]}>
            <div className={classes["checkout"]}>
                <div className={classes.subtotal}>
                    <p>Subtotal:</p>
                    <p>48</p>
                </div>
                <div className={classes.shipping}>
                    <p>Shipping:</p>
                    <button>add info</button>
                </div>
                <div className={classes.coupon}>
                    <p>Coupon Code:</p>
                    <button>Add Coupon</button>
                </div>
                <div className={classes["grand-total"]}>
                    <p>Grand Total:</p>
                    <p>48</p>
                </div>

            </div>
            <div className={classes["checkout-btn"]}>
                <button>checkout</button>
                </div>
        </div>
    )
}

export default CheckOut
