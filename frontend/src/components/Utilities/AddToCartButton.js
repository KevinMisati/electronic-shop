import React,{useContext} from 'react'
import Button from "./Button"
import CartContext from "../../Context"

const AddToCartButton = ({text,color,background,font}) => {
    const { add_to_cart } = useContext(CartContext)
    const handleItemIncrement = (id) => {
        add_to_cart(id)
    }

    return (
        <div onClick={() => handleItemIncrement(id)}>
           <Button
            text={text}
            color={color}
            background={background}
            font={font}
            /> 
        </div>
    )
}

export default AddToCartButton
