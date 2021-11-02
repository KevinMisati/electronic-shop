import React,{useState} from 'react'
import classes from "./SingleProduct.module.css"
const SingleProduct = ({ id, img, title, price,info}) => {

    const [quantityOfSpecificItem, setQuantityOfSpecificItem] = useState(1)
    const [totalPriceOfSpecificItem, settotalPriceOfSpecificItem] = useState(price)

    const handleItemIncrement = () => {
        console.log("increment")
        setQuantityOfSpecificItem(prev => prev + 1)
        settotalPriceOfSpecificItem(prevPrice => prevPrice + price)
    }
    const handleItemdecrement = () => {
        setQuantityOfSpecificItem(prev => prev - 1)
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

                    <button onClick={handleItemdecrement} className={classes["remove-btn"]}>-</button>

    <span className={classes["quantity"]}>{quantityOfSpecificItem}</span>

                    <button onClick={handleItemIncrement} className={classes["add-btn"]}>+</button>

                </div>
                <div className={classes["price"]}>
                    {totalPriceOfSpecificItem}
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
