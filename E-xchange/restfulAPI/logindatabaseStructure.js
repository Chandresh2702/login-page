const mongoose = require("mongoose");
const validator =  require("validator");
const { default: isEmail } = require("validator/lib/isEmail");
const loginschema =  new mongoose.Schema
(
    {
        name: 
        {
             type: String,
             required: true,
             trim: true,
             minlength:[2,"Input atleast 2 letters"],
             maxlength: 30,   
        },
        email:
        {
             type:String,
             required: true,
             unique:true,
             validate(val)
             {
                if (!isEmail(val)) {
                        throw new Error("this is not a valid email");
                    }    
             }
        },
        Password:
        {
            type:String,
            required: true,
            minlength:[6,"Input atleast 6 letters"] 
        }
    }   
)
const logindata = new mongoose.model("logindata",loginschema);
module.exports= logindata; // this exports the data , so that it can be required into other files and be used their .



