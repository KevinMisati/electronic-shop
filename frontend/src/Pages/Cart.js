import React,{useContext} from 'react'
import classes from "./Cart.module.css"
import SingleProduct from '../components/Cart/SingleProduct'
import CheckOutButton from '../components/Cart/CheckOut'
import { CartContext } from '../Context'

const Cart = () => {
    const { products_in_cart} = useContext(CartContext)
    return (
        <div className={classes["cart-container"]}>
            
            <div className={classes["cart"]}>
                <h1>Shopping Cart</h1>
                <div>
                <div className={classes["products"]}>
                  {
                      products_in_cart.map (({id,img,title,price,info}) => {
                          return (
                              <SingleProduct
                                    key={id}
                                    img={img}
                                    title={title}
                                    price={price}
                               />
                          )
                      })
                  }  
                    
                </div>
                <CheckOutButton />
            </div>
        </div>
    </div>
    )
}

export default Cart
