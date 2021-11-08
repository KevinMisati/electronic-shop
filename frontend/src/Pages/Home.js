import React,{useEffect,useState} from 'react'
import classes from "./Home.module.css"
import Banner from '../components/Home/Banner'
import TopSelling from '../components/Home/TopSelling'
import axiosInstance from '../axiosApi'
const Home = () => {



    return (
        <div className={classes["home_container"]}>
          
        <div>
          
        </div>
        <div>
          <Banner />
        </div>
        <div>
          <TopSelling />
        </div>
        
        </div>
    )
}

export default Home
