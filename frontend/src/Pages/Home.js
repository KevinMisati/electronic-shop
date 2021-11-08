import React,{useEffect,useState} from 'react'
import classes from "./Home.module.css"
import Banner from '../components/Home/Banner'
import TopSelling from '../components/Home/TopSelling'
import axiosInstance from '../axiosApi'
const Home = () => {

  const [products,setProducts] = useState([])
  const [filteredProducts,setFilteredProducts] = useState([])
alert("hello")
  useEffect(() => {
    alert("hello")
    alert("hello")
        fetch("http://electron-shop.herokuapp.com/api/products")
        .then(response => response.json())
        .then(response => {
          alert("jnjk x djjfjf ejjj dkdkkd dkdkkdkdkdkdk")
            setProducts(response)
            setFilteredProducts(response.filter(product => product.category == "laptops"))
            
            alert("hello")
            alert(response)
        })
        
        .catch(error => {
            throw error
        })
    },[])

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
