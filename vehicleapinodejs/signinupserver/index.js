// const express = require("express")
// const mongoose = require("mongoose")
// const app = express()
// const cors = require('cors')
// const authRoute = require('./routes/auth')

// const  dbURI = "mongodb://localhost/eventiradvehicle"
// app.use(express.json())
// app.use(cors())
// app.use('/api/auth', authRoute)


// mongoose.connect(dbURI , {useNewUrlParser: true, useUnifiedTopology: true})
// const db = mongoose.connection

// db.on("error", (err)=>{console.error(err)})
// db.once("open", () => {console.log("DB started successfully")})

// app.listen(2500, () => {console.log("Server started: 2500")})






const express = require("express")
const mongoose = require("mongoose")
const app = express()
const cors = require('cors')
const authRoute = require('./routes/auth')
const User = require('./models/user')
const PORT = process.env.PORT || 2500;


app.use(express.json())
app.use(cors())
// app.use('/api/auth', authRoute)

mongoose.connect('mongodb+srv://user2:12345@cluster0.ztx5i.mongodb.net/?retryWrites=true&w=majority', {
    // useNewUrlParser: true,
    // useCreateIndex: true,
    useUnifiedTopology: true,
    // useFindAndModify: false

})
.then(() => console.log('MongoDB connection established.'))
.catch((error) => console.error("MongoDB connection failed:", error.message))



app.post('/signup', async(req, res) => {
    
    const newUser = User({report_id: req.body.report_id,vehicle_category: req.body.vehicle_category,hit_run: req.body.hit_run, vehicle_number: req.body.vehicle_number, vehicle_type: req.body.vehicle_type, drink: req.body.drink
        , cell_phone: req.body.cell_phone, vehicle_Speed: req.body.vehicle_Speed, license_No: req.body.license_No
        , license_issue_date: req.body.license_issue_date, license_expiry_date: req.body.license_expiry_date})
        try{
            const a1 =  await newUser.save() 
            res.json({success: true})
        }catch(err){
            res.send({success: false})
        }


});




app.get('/:id', async (req, res) => {
const userResult = await User.find({report_id: req.params.id }).exec();
res.json({
errno: 0,
data: userResult
})
})



app.listen(PORT, () =>
  console.log(`Application is listening on port ${PORT}!`)
);