import React from 'react'
import classes from "./Products.module.css"
import SingleProduct from "../Utilities/SingleProduct"

const Products = ({products}) => {
    
    return (
        <div className={classes["products-container"]}>
        <div className={classes["products"]}>
            {
                products.map(product => {
                    return (
                        <SingleProduct
                            img={product.img}
                            name={product.title}
                            newPrice={product.price}
                            oldPrice={400}
                            key={product.id}
                            id={product.id}
                        />
                    )
                })
            }
        </div>
        </div>
    )
}

export default Products
