import React,{useContext,useEffect} from 'react'
import classes from "./SingleProduct.module.css"
import Button from './Button'
import { Link,Switch,Route,useRouteMatch,useParams } from 'react-router-dom'
import ProductInfo from '../../Pages/ProductInfo'
import { CartContext } from "../../Context"


const SingleProduct = ({id,name,img,newPrice,oldPrice}) => {

    const {add_to_cart} = useContext(CartContext)
    const handleItemIncrement = (id) => {
        add_to_cart(id)
    }
    

    const {path} = useRouteMatch()

    const shorten_name = (name) => {
        const name_arr = name.split(" ")
        const short_name_arr = name_arr.splice(0,2)
        const short_name = short_name_arr.join(" ")
        return short_name
    }
    const short_name = shorten_name(name)
    
    return (
        <>
        <div className={classes["single-product_container"]}>
            <div className={classes["single-product"]}>
                <div className={classes.product}>

                <div className={classes["img-container_outer"]}>
                    <div  className={classes["eye-icon"]}>
                        <Link to={"/store/product/" + id}>
                        <i className="fas fa-eye"></i>
                        </Link>
                    </div>
                    <div className={classes.overlay}></div>
                <div className={classes["img-container_inner"]}>
                    <img src={img}></img>
                </div>
                </div>
                <div className={classes["product-info"]}>
                    <div className={classes["product-name"]}>
                        <h5>
                            
                            <a href='#'>{short_name}</a>
                        </h5>
                    </div>
                    <div className={classes["product-price"]}>
                        <p className={classes["old-price"]}>{oldPrice}</p>
                        <p className={classes["new-price"]}>{newPrice}</p>
                    </div>
                            <div onClick={() => handleItemIncrement(id)} className={classes["add-to-cart"]}>
                                <Button  text="add to cart" />
                    </div>
                </div>
                </div>
            </div>
        </div>
        </>
    )
}

export default SingleProduct
