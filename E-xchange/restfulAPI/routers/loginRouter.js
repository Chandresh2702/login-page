const express = require("express");
const router  = express.Router();
const bcrypt = require("bcrypt")
const logindata = require("../logindatabaseStructure"); // this is to make the router understand the model of the logindata.
router.post("/register", async(req,res)=>
{  try 
    {
      const user = new logindata(req.body);
      const hashpassword = await bcrypt.hash(user.Password,10);
      console.log(user);
      user.Password  = hashpassword;
      await user.save();
      console.log("Following data has been saved")
      console.log(user); 
      res.send(user);
} catch (error)
{
    res.send(error);
}
})
router.get("/viewdata", async (req,res) => {
           try{
                 const temp = await logindata.find();
                 res.send(temp);
           }
           catch(e)
           {
               res.send(e);
           }
})
router.post("/login", async (req,res)=>{
    try {
        const name = req.body.name;
        const email = req.body.email;
        const password = req.body.Password;
        const filterData = await logindata.findOne({email:email});
        console.log(password);
        console.log(filterData);
        console.log(filterData.Password);  
        const flag  =  await bcrypt.compare(password,filterData.Password);
        if (flag)
        {
            // res.render("");  // enter the location of home page into this box .
            res.send("password is correct");
        }
        else
        {
           res.send("password is incorrect");
        }

    } 
    catch (error) 
    {
        res.send(error);
    }
})
module.exports = router;
