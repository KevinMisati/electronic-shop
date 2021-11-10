import React from 'react'
import classes from "./Account.module.css"
import Login from '../components/Account/Login'
import SignUp from '../components/Account/SignUp'
import Logout from '../components/Account/Logout'
import { Route,useRouteMatch,Switch } from 'react-router-dom'
const Account = () => {
    let  {path,url}= useRouteMatch();
    return (
        <div className={classes["account-container"]}>
            <Switch>
                <Route exact path={`${path}/`} component={Logout} />
                <Route exact path={`${path}/login`} component={Login} />
                <Route path={`${path}/signup`} component={SignUp} />
            </Switch>
            
        </div>
    )
}

export default Account
