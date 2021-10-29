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

const App = () => {
  const {path,url} = useRouteMatch()
  return(
      <div className={classes.app}>
        <Navbar />
        <Switch>
          <Route  path={`/account`} component={Account} />
          <Route  path="/cart" component={Cart} />
          <Route exact path="/store" component={Store} />
          <Route exact path="/store/product/:id" component={ProductInfo} />
          <Route exact path="/" component={Home} />
        </Switch>
        
        <Footer />
      </div>
  )
}

export default App


/* class App extends Component{
  const [path] = useRouteMatch()
  render(){
    return(
      <div className={classes.app}>
        <Navbar />
        <Switch>
          <Route  path={`${path}/account`} component={Account} />
          <Route  path="/cart" component={Cart} />
          <Route  path="/store" component={Store} />
          <Route exact path="/" component={Home} />
        </Switch>
        
        <Footer />
      </div>
    );
  }
}

export default App; */