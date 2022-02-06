import React, { Component} from "react";
import classes from "./App.module.css"
import Home from "./Pages/Home";
import Navbar from "./components/Navbar/Navbar";
import Footer from "./components/Footer"
import {Route,Switch,useRouteMatch} from "react-router-dom"
import Account from "./Pages/Account"
import Cart from "./Pages/Cart"
import Store from "./Pages/Store"
import ProductInfo from "./Pages/ProductInfo";
import {CartProvider} from "./Context"
import checkout from "./Pages/CheckOut"
import CheckOut from "./Pages/CheckOut";
import ScrollToTop from "./components/ScrollToTop";
import ThankYou from "./Pages/ThankYou";
import Error404 from "./Pages/Error404"

const App = () => {
  const {path,url} = useRouteMatch()
  
  return(
    <CartProvider>
      <div className={classes.app}>
        <Navbar />
        <ScrollToTop />
        <Switch>
          <Route  path={`/account`} component={Account} />
          <Route  path="/cart" component={Cart} />
          <Route exact path="/store" component={Store} />
          <Route exact path="/store/product/:id" component={ProductInfo} />
          <Route path="/checkout" component={CheckOut} ></Route>
          <Route path="/thankyou" component={ThankYou} ></Route>
          <Route exact path="/" component={Home} />
          <Route component={Error404} />
        </Switch>
        
        <Footer />
      </div>
    </CartProvider>
      
    
  )
}

export default App

