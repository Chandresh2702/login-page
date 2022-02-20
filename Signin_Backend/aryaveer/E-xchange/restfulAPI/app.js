const express  =  require("express");
const logindata = require("./logindatabaseStructure");
require("./connect");
const loginRouter = require("./routers/loginRouter");
const app  =  express();
const port  =  process.env.PORT || 8000;
app.use(express.json());
app.use(loginRouter);
app.listen(port , ()  =>
 {console.log("the api is working");}
)


