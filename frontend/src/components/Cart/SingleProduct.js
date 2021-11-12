import React,{useState,useContext,useEffect} from 'react'
import classes from "./SingleProduct.module.css"
import { CartContext } from '../../Context'



const SingleProduct = ({ id, img, title, price,info,quantity_of_specific_product_in_cart}) => {

    //let price = price.toFixed(3)
    const {
        increase_sub_total,
        decrease_sub_total,
        products_in_cart,
        remove_product_from_cart,
        
    } = useContext(CartContext)

    const [quantityOfSpecificItem, setQuantityOfSpecificItem] = useState(1)
    const [totalPriceOfSpecificItem, settotalPriceOfSpecificItem] = useState(Number(price))

    const handleItemIncrement = () => {
        
        increase_sub_total(price)
        setQuantityOfSpecificItem(prev => prev + 1)
        settotalPriceOfSpecificItem(prevPrice => prevPrice + Number(price))
        
    }
    


    const handleItemdecrement = (id,price) => {
        
        if (quantityOfSpecificItem > 1){
            decrease_sub_total(price)
            settotalPriceOfSpecificItem(prevPrice => prevPrice - Number(price))
            setQuantityOfSpecificItem(prev => prev - 1)
        }
        else if (quantityOfSpecificItem == 1){
            remove_product_from_cart(id,price)
        }
    }
    const handleProductRemoval = (id,price) => {
        remove_product_from_cart(id,price)
        console.log(products_in_cart)
    }
    return (
        <div className={classes["single-product-container"]}>
            <div className={classes["single-product"]}>
                <div className={classes["img-container"]}>
                    <img src={img}></img>
                </div>
                <div className={classes["product-info-container"]}>
                <div className={classes["product-info"]}>
                    <h3>{title}</h3>
                    <p>{info}</p>
                </div>
                <div className={classes["change-amount"]}>

                    <button onClick={() => handleItemdecrement(id,price)} className={classes["remove-btn"]}>-</button>

    <span className={classes["quantity"]}>{ quantityOfSpecificItem 
    }</span>

                    <button onClick={handleItemIncrement} className={classes["add-btn"]}>+</button>

                </div>
                <div className={classes["price"]}>
                    {totalPriceOfSpecificItem.toFixed(2)}
                </div>
                <div className={classes["remove-product"]}>
                    <button onClick={() => handleProductRemoval(id,price)}>Remove</button>
                </div>
                </div>
            </div>
        </div>
    )
}

export default SingleProduct
