import React from 'react'
import classes from "./CheckOut.module.css"

const CheckOut = () => {
    return (
        <div className={classes["checkout-container"]}>
         <div className={classes["checkout"]}>
            <form>
                    <h2>1. ADDRESS DETAILS</h2>
                <div className={classes["names"]}>
                    <div className={classes["input-control"]}>
                        <label htmlFor="firstname">First Name *</label>
                        <input id="firstname" type="text"></input>
                    </div>

                    <div className={classes["input-control"]}>
                        <label htmlFor="firstname">Last Name *</label>
                        <input id="lastname" type="text" />
                    </div>
                </div>

                <div className={classes["input-control"]}>
                    <label htmlFor="firstname">Mobile phone number *</label>
                    <div className={classes["mobile"]}>
                        <div className={classes["country-code"]}>+254</div>
                        <input type="phone" />
                    </div>
                </div>

                <div className={classes["input-control"]}>
                    <label htmlFor="firstname">Delivery Address *</label>
                   <textarea  ></textarea>
                </div>

                <div className={classes["input-control"]}>
                        <label htmlFor="firstname">State/Region *</label>
                    <input type="option" />
                </div>

                <div className={classes["input-control"]}>
                        <label htmlFor="firstname">City *</label>
                    <input type="text" />
                </div>

                <div className={classes["input-control"]}>
                    <button>save and continue</button>
                </div>
                    
            </form>


            <form>
                    <h2>2. DELIVERY METHOD</h2>
                    <h4>How do you want your order delivered?</h4>

                    <div className={classes["input-control"]}>
                        <div className={classes["mpesa-logo"]}>
                            <input type="radio" />
                        </div>

                        <div className={classes["instructions"]}>
                            <h4>Pay Now</h4>
                            <p>1. Your security is our #1 priority. You keep control of every transaction and are protected against fraud and theft.</p>
                            <p>2. Faster refund process. The refund will happen almost instantly. No need to wait. Jumia's return/refund policy applies.</p>
                        </div>
                    </div>
                    <div className={classes["input-control"]}>
                        <button>save and continue</button>
                    </div>

            </form>

                <form>
                    <h2>2. Payment METHOD</h2>
                    <h4>How do you want to pay for your order?</h4>

                    <div className={classes["input-control"]}>
                        <div className={classes["mpesa-logo"]}>
                            <input type="radio" />
                        </div>
                        
                        <div className={classes["instructions"]}>
                            <h4>Pay Now</h4>
                            <p>1. Your security is our #1 priority. You keep control of every transaction and are protected against fraud and theft.</p>
                            <p>2. Faster refund process. The refund will happen almost instantly. No need to wait. Jumia's return/refund policy applies.</p>
                        </div>
                    </div>
                    <div className={classes["input-control"]}>
                        <button>save and continue</button>
                    </div>
                </form>
         </div>
        </div>
    )
}

export default CheckOut
