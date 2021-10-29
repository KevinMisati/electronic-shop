import React from 'react'
import classes from "./Account.module.css"
import Login from '../components/Account/Login'
import SignUp from '../components/Account/SignUp'
import { Route,useRouteMatch,Switch } from 'react-router-dom'
const Account = () => {
    let  {path,url}= useRouteMatch();
    console.log(path)
    return (
        <div className={classes["account-container"]}>
            <Switch>
                <Route exact path={`${path}/login`} component={Login} />
                <Route path={`${path}/signup`} component={SignUp} />
            </Switch>
            
        </div>
    )
}

export default Account
