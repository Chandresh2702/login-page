require('dotenv').config();
const express = require("express");
const path = require("path");
const app = express();
const hbs = require("hbs");
const bcrypt = require("bcryptjs");
//const jwt = require("jsonwebtoken");
//const cookieParser = require("cookie-parser");
//const auth = require("./middleware/auth");

require("./db/conn");
const Register = require("./models/register");             // importing class Register which is instance of collection
const { json } = require("express");
const { log } = require("console");

const port = process.env.PORT || 5000;

const static_path = path.join(__dirname, "../public");
const template_path = path.join(__dirname, "../templates/views");
const partials_path = path.join(__dirname, "../templates/partials");

app.use(express.json());
//app.use(cookieParser());
app.use(express.urlencoded({extended:false}));

app.use(express.static(static_path));
app.set("view engine", 'hbs');                              
app.set("views", template_path);
hbs.registerPartials(partials_path);


app.get("/", (req,res) => {
    res.render("index")
});

app.get("/index", (req,res) => {
    res.render("index")
});

// auth is middleware function
// app.get("/secret",auth, (req,res) => {
//     // console.log(`this is the cookie ${req.cookies.jwt}`);
//     res.render("secret")
// });

// app.get("/logout", auth, async(req,res) => {
//     try{

//         // req.user.token = req.user.token.filter((currElement) => {
//         //     return currElement.token != req.token;
//         // })

//         //res.clearCookie("jwt");
//         console.log("logout succesfully")

//         await req.user.save();
//         res.render("login");
//     }catch(error){
//         res.status(500).send(error);
//     }
// })

app.get("/register", (req,res) => {
    res.render("register");
})

app.get("/login", (req,res) => {
    res.render("login");
})

app.post("/register", async(req,res) => {
    try {

        const password = req.body.password;
        const cpassword = req.body.confirmpassword;
        if(password=== cpassword){
            const registerStudent = new Register({
                firstname: req.body.firstname,
                lastname: req.body.lastname,
                email: req.body.email,
                gender:req.body.gender,
                phone:req.body.phone,
                age:req.body.age,
                password:req.body.password,
                confirmpassword:req.body.confirmpassword
            })

             console.log("the sucess part " + registerStudent);

           // const token = await registerStudent.generateAuthToken();
            //console.log("the token part" + token);

        // The res.cookie(name, value, property) function is used to set the cookie name to value.
        // The value parameter may be a string or object converted to JSON.

        //res.cookie("jwt", token, {
          //  expires:new Date(Date.now() + 60000),
           // httpOnly:true
       // });
       // console.log(cookie);

           const registered =  await registerStudent.save();
            // console.log("tha page part" + registered);

            res.status(201).render('index');
            console.log("register kaam kar rha")
        }else{
            res.send("password is not matching")
        }

    } catch (e) {
      res.status(400).send(e);
        console.log("register kaam nhi kar rha")
    }
})

// login check
app.post("/login", async(req,res) => {
    try{

        const email = req.body.email;
        const password = req.body.password;

        const useremail = await Register.findOne({email:email});
        const isMatch = await bcrypt.compare(password,useremail.password);

      //  const token = await useremail.generateAuthToken();
        //console.log("the token part" + token);

        //res.cookie("jwt", token, {
         //   expires:new Date(Date.now() + 600000),
           // httpOnly:true,
            // secure:true
       // });
        
        if(isMatch){
            res.status(201).render("login");
            console.log("login done")
        }else{
            res.send("invalid login details");
            console.log("login nhi ho rha")
        }
        // res.send(useremail);
        // console.log(useremail);

    }catch(error){
        res.status(400).send("invalid details")
        console.log("login code harab h")
    }
})

// const bcrypt = require("bcryptjs");

// const securePassword = async (password) => {
//     const passwordHash = await bcrypt.hash(password,10);
//     console.log(passwordHash);

//     const passwordmatch = await bcrypt.compare("khushi@123",passwordHash);
//     console.log(passwordmatch);
// }
// securePassword("khushi@123");




// const createToken = async() => {
//     const token = await jwt.sign({_id:"123"},"mynameisrohitbagheliamamazing");
//     console.log(token);
//     return token

//     // const userVar = await jwt.verify(token, "mynameisrohitbagheliamamazing");
//     // console.log(userVar);
// }

// createToken();

app.listen(port, ()=>{
    console.log(`server is running at port no ${port}`);
})