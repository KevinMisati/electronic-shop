import React from 'react'
import classes from './Header.module.css'
import { Link,
        useRouteMatch
    } 
    from 'react-router-dom'

const Header = () => {
    
    
    return (
        <header className={classes["header-container"]}>
            <div className={classes["header"]}>

            <div className={classes["logo-and-store-links-container"]}>
                <div className={classes.logo}>
                   
                    <h3>
                        <Link className={classes["nav-link"]} to="/">LapShop</Link>
                    </h3>
                    
                
            </div>
            <nav className={classes.logo}>
                <Link className={classes["nav-link"]} to="/store">Store</Link>
                
            </nav>
            </div>
            

            <div className={classes["account-and-cart"]}>
                <div className={classes.cart}>
                    <Link className={classes["nav-link"]} to="/cart">Cart</Link>
                </div>
                <div className={classes.account}>
                    <Link className={classes["nav-link"]} to={`/account/login`}>Login</Link>
                    
                </div>
            </div>
            
            </div>
        </header>
    )
}

export default Header
