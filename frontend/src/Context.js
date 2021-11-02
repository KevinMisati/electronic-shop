import React,{createContext,useState,useEffect} from 'react'
import {products} from "./components/Store/data"


const CartContext = createContext()

const CartProvider = ({children}) => {

    const [cartState,setCartState] = useState({
        number_of_items:0,
        products_in_cart:[],
        sub_total:0,
    })
    const add_to_cart = (id) => {
        console.log("add to cart",id)
        const product = products.filter(product => product.id == id)
        
        setCartState({...cartState,
            number_of_items:cartState.number_of_items + 1,
            products_in_cart:[...product,...cartState.products_in_cart],
            sub_total:cartState.sub_total + product[0].price
        })
        
    }
    useEffect(() => {
        console.log(cartState.products_in_cart)
        console.log(cartState.sub_total)
    })
   

    return (
        <CartContext.Provider value={
            {
                number_of_items:cartState.number_of_items,
                add_to_cart:add_to_cart,
                products_in_cart : cartState.products_in_cart,
                sub_total:cartState.sub_total
            }
          }
        >
            {children}
        </CartContext.Provider>
    )
}
export { CartContext, CartProvider}




