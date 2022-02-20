// this code is to establish link from the database . 
let mongoose = require('mongoose');
const connectDB = async () => {
    const connection = await mongoose.connect("mongodb://localhost:27017/ExchangeData");
    console.log('I am connected to database')
    return connection;
};
connectDB();
