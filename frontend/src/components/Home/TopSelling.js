import React from 'react'
import classes from "./TopSelling.module.css"
import Title from '../Utilities/Title'
import SingleProduct from '../Utilities/SingleProduct'

const TopSelling = () => {
    const products = [
        {
            name: "Samsung Galaxy A12, 6.5, 4GB RAM + 128GB(Dual SIM), 5000mAh - Blue",
            img: "https://ke.jumia.is/unsafe/fit-in/300x300/filters:fill(white)/product/49/134053/1.jpg?4164",
            newPrice: 16499,
            oldPrice: 19000,
           // discount:CalcDiscount(newPrice,oldPrice)
        },
        {
            name: "Garnier Pure Active 3 In1 Charcoal Anti Blackhead Mask Wash Scrub -150ml",
            img: "https://ke.jumia.is/unsafe/fit-in/300x300/filters:fill(white)/product/44/255851/1.jpg?8649",
            newPrice: 699,
            oldPrice: 970,
           // discount: CalcDiscount(newPrice, oldPrice)
        },
        {
            name: "Garnier Skin Active Pure Charcoal Black Tissue Face Mask",
            img: "https://ke.jumia.is/unsafe/fit-in/300x300/filters:fill(white)/product/45/269252/1.jpg?7176",
            newPrice: 199,
            oldPrice: 300,
            //discount: CalcDiscount(newPrice, oldPrice)
        },
        {
            name: "Bruhm BGI-66M31ORBN, 3+1 Free Standing Gas Cooker - Shiny Black",
            img: "https://ke.jumia.is/unsafe/fit-in/300x300/filters:fill(white)/product/94/459062/1.jpg?8897",
            newPrice: 23900,
            oldPrice: 30500,
           // discount: CalcDiscount(newPrice, oldPrice)
        }
    ]
    return (
        <div className={classes["top-selling_container"]}>
        <div className={classes["top-selling"]}>
            <header className={classes["top-selling_header"]}>
                <Title title="new products"  />
            </header>
            <main className={classes.products}>
                {products.map(product => {
                    return (
                        
                        <SingleProduct 
                            key={product.name}
                            name={product.name}
                            img={product.img}
                            newPrice={product.newPrice}
                            oldPrice={product.oldPrice}
                        /> 
                    )
                })}
            </main>

        </div>
            
        </div>
    )
}

export default TopSelling
