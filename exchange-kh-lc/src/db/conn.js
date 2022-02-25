const mongoose = require("mongoose");

mongoose.connect("mongodb+srv://e-xchangeuser:user123@cluster0.kjfub.mongodb.net/Sign-up?retryWrites=true&w=majority",{
    // useCreateIndex:true,
    // useNewUrlParser:true,
    // useUnifiedTopology:true
})
.then(() =>{
    console.log('connection sucessful');
}).catch((e) => {
    console.log(e);
})
