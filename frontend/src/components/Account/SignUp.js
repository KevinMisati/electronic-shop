import React,{useState} from 'react'
import classes from "./SignUp.module.css"
import axiosInstance from "../../axiosApi"

const SignUp = () => {
    const [email,setEmail] = useState("")
    const [password,setPassword] = useState("")
    const [firstname,setFirstName] = useState("")
    const [lastname,setLastName] = useState("")
    const handleSubmit = (e) => {
        e.preventDefault()
        axiosInstance.post('user/create/',{
            email:email,
            first_name:firstname,
            last_name:lastname,
            password:password
        })
        .then(resp =>  resp)
        .catch(error => {
            console.log(error)
        })
    }
    const handleEmailChange = (e) => {
        setEmail(e.target.value)
    }
    const handlePasswordChange = (e) => {
        setPassword(e.target.value)
        console.log("not working")
    }
    const handleFirstnameChange = (e) => {
        setFirstName(e.target.value)
    }
    const handleLastNameChange = (e) => {
        setLastName(e.target.value)
    }
    return (
        <div className={classes["signup-container"]}>
            <div className={classes["signup"]}>
                <h1>Create Account</h1>
                <form>
                    <div className={classes["input-control"]}>
                        <label htmlFor='email'>email</label>
                        <input onChange={handleEmailChange} id='email' type='email' name='email' value={email} />
                    </div>
                    <div className={classes["input-control"]}>
                        <label htmlFor='firstname'>first name</label>
                        <input onChange={handleFirstnameChange} id='username' type='text' name='firstname' value={firstname} />
                    </div>
                    <div className={classes["input-control"]}>
                        <label htmlFor='lastname'>last name</label>
                        <input onChange={handleLastNameChange} id='username' type='text' name='lastname' value={lastname} />
                    </div>
                    <div className={classes["input-control"]}>
                        <label htmlFor='password'>passowd</label>
                        <input onChange={handlePasswordChange} id='password' type='password' name='password' value={password} />
                    </div>
                    <div className={classes["input-control"]}>
                        <button onClick={handleSubmit} className={classes["register-btn"]}>create account</button>
                    </div>
                </form>
            </div>
        </div>
    )
}

export default SignUp
