import React,{createContext,useState,useEffect} from 'react'
import axiosInstance from './axiosApi'


const CartContext = createContext()

const CartProvider = ({children}) => {

    const [cartState,setCartState] = useState({
        number_of_items:0,
        products_in_cart:[],
        sub_total:0,
        quantity_of_specific_product_in_cart:0,
    })

    const add_to_cart = (id) => {

        if (cartState.products_in_cart < 1 ) {
            axiosInstance.get(`products/${id}`) 
        
                .then(resp => {
                    setCartState({...cartState,
                    number_of_items:cartState.number_of_items + 1,
                    products_in_cart:[resp.data,...cartState.products_in_cart],
                    sub_total:cartState.sub_total + Number(resp.data.new_price)
                })
                
                }) 
                .catch(error => {
                    throw error
                })
        }
        else  {
            const is_product_in_cart = cartState.products_in_cart.filter(product => product.id == id)
            if(is_product_in_cart.length > 0){
                
            }
            else{
                
                axiosInstance.get(`products/${id}`) 
        
                .then(resp => {
                    setCartState({...cartState,
                    number_of_items:cartState.number_of_items + 1,
                    products_in_cart:[resp.data,...cartState.products_in_cart],
                    sub_total:cartState.sub_total + Number(resp.data.new_price)
                })
                
                }) 
                .catch(error => {
                    throw error
                })
            }

        
    
                }
            
        
        
        
        
       

    } 

    const increase_sub_total = (price) => {
        setCartState({
            ...cartState,
            sub_total:cartState.sub_total + Number(price)
        })
        
    }

    const decrease_sub_total = (price) => {
        setCartState({
            ...cartState,
            sub_total:cartState.sub_total - Number(price)
        })
        
    }

    const remove_product_from_cart = (id,price) => {
        
        setCartState({
            ...cartState,
            products_in_cart:cartState.products_in_cart.filter(product => product.id != id),
            sub_total:cartState.sub_total - Number(price),
            number_of_items:cartState.number_of_items - 1
        })
        
    }
    const quantity_of_specific_product_in_cart = (id) => {

    }



    return (
        <CartContext.Provider value={
            {
                number_of_items:cartState.number_of_items,
                add_to_cart:add_to_cart,
                products_in_cart : cartState.products_in_cart,
                sub_total:cartState.sub_total,
                increase_sub_total:increase_sub_total,
                decrease_sub_total:decrease_sub_total,
                remove_product_from_cart:remove_product_from_cart
            }
        }
        >
            {children}
        </CartContext.Provider>
    )
}

export { CartContext, CartProvider}