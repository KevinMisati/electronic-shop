import React,{useState} from 'react'
import classes from "./SignUp.module.css"

const SignUp = () => {
    const [email,setEmail] = useState("")
    const [password,setPassword] = useState("")
    const [firstname,setFirstName] = useState("")
    const [lastname,setLastName] = useState("")
    const handleSubmit = () => {

    }
    const handleEmailChange = (e) => {
        setEmail(e.target.value)
    }
    const handlePasswordChange = (e) => {
        setPassword(e.target.value)
    }
    const handleFirstnameChange = (e) => {
        setUsername(e.target.value)
    }
    const handleLastNameChange = (e) => {
        setUsername(e.target.value)
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
                        <label htmlFor='username'>first name</label>
                        <input onChange={handleFirstnameChange} id='username' type='text' name='username' value={firstname} />
                    </div>
                    <div className={classes["input-control"]}>
                        <label htmlFor='username'>last name</label>
                        <input onChange={handleLastNameChange} id='username' type='text' name='username' value={lastname} />
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
