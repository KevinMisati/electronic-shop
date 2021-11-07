import React,{useState} from 'react'
import classes from "./Login.module.css"
import {Link} from "react-router-dom"
import axiosInstance from '../../axiosApi'

const Login = () => {
    const [email,setEmail] = useState("")
    const [password,setPassword] = useState("")
    const handleSubmit = (e) => {
        e.preventDefault()
        axiosInstance.post('token/obtain/',{
                email : email,
                password : password
            }
        )
        .then(response => {
            axiosInstance.defaults.headers['Authorization'] = 'JWT ' + response.data.acess
            localStorage.setItem('access_token',response.data.acess)
            localStorage.setItem('refresh_token',response.data.refresh)
            console.log(response.data)
            return response.data
        })
        .catch (error => {
            throw error
        })
    }
    const handleEmailChange = (e) => {
        setEmail(e.target.value)
    }
    const handlePasswordChange = (e) => {
        setPassword(e.target.value)
    }
    return (
        <div className={classes["login-container"]}>
            <div className={classes["login"]}>
                <h1>Login</h1>
                <form>
                    <div className={classes["input-control"]}>
                        <label htmlFor='email'>email</label>
                        <input onChange={handleEmailChange} id='email' type='email' name='email' value={email} />
                    </div>
                    <div className={classes["input-control"]}>
                        <label htmlFor='password'>passowd</label>
                        <input onChange={handlePasswordChange} id='password' type='password' name='password' value={password} />
                    </div>
                    <div className={classes["input-control"]}>
                        <button onClick={handleSubmit} className={classes["signin-btn"]}>sign in</button>
                    </div>
                </form>
                <h5 className={classes["create-account-link"]}>
                    <Link to="/account/signup" >
                        create account
                    </Link>
                </h5>
            </div>
        </div>
    )
}

export default Login
