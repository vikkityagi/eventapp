// const express = require("express")
// const mongoose = require("mongoose")
// const app = express()
// const cors = require('cors')
// const authRoute = require('./routes/auth')

// const  dbURI = "mongodb://localhost/eventirad"
// app.use(express.json())
// app.use(cors())
// app.use('/api/auth', authRoute)


// mongoose.connect(dbURI , {useNewUrlParser: true, useUnifiedTopology: true})
// const db = mongoose.connection

// db.on("error", (err)=>{console.error(err)})
// db.once("open", () => {console.log("DB started successfully")})

// app.listen(2400, () => {console.log("Server started: 2400")})



const express = require("express")
const mongoose = require("mongoose")
const app = express()
const cors = require('cors')
const rounds = 10

// const router = express.Router()
const User1 = require('./models/user1')
const bcrypt = require('bcrypt')
const tokenSecret = 'my-token-secret'
const jwt = require('jsonwebtoken')
const PORT = process.env.PORT || 8081;

// const middleware = require('../middleware')


app.use(express.json())
app.use(cors())
// app.use('/api/auth', authRoute)

mongoose.connect('mongodb+srv://${mongodbusername}:${mongodbuserpassword}cluster0.ztx5i.mongodb.net/?retryWrites=true&w=majority', {
    // useNewUrlParser: true,
    // useCreateIndex: true,
    useUnifiedTopology: true,
    // useFindAndModify: false

})
.then(() => console.log('MongoDB connection established.'))
.catch((error) => console.error("MongoDB connection failed:", error.message))


app.get('/', async(req, res) => {
     
    User1.find((err, docs) => {
        if (!err) {
            res.json(docs);
        } else {
            console.log('Failed to retrieve the Course List: ' + err);
        }
    });
  
  });

app.post('/policelogin', (req, res) => {
    User1.findOne({email: req.body.email,phoneno: req.body.phoneno})
    .then(user => {
        console.log({email: req.body.email})
        if(!user) res.status(404).json({success: false, msg: 'no user with that email found'})
        else {
            bcrypt.compare(req.body.password, user.password, (error, match) => {
                if (error) res.status(500).json(error)
                else if (match) res.status(200).json({success: true,token: generateToken(user)})
                else res.status(403).json({success: false, msg: 'password do not match'})
            })
        }
    })
    .catch(error => {
        res.status(500).json(error)
    })
});

app.post('/policesignup', (req, res) => {
    bcrypt.hash(req.body.password, rounds, (error, hash) => {
        if (error) res.status(500).json({msg: "Enter all field"})
        else {
            const newUser = User1({email: req.body.email,phoneno: req.body.phoneno, password: hash, cpassword: req.body.cpassword})
            newUser.save()
            .then(user => {
                res.status(200).json(user)
            })
            .catch(error => {
                res.status(500).json(error)
            })
        }
    })

});



function generateToken(user){
    return jwt.sign({data: user}, tokenSecret, {expiresIn: '24h'})
}
// const authRoute = require('./routes/auth')

// const  dbURI = "mongodb://localhost/eventirad"
// mongoose.connect(dbURI , {useNewUrlParser: true, useUnifiedTopology: true})
// const db = mongoose.connection

// db.on("error", (err)=>{console.error(err)})
// db.once("open", () => {console.log("DB started successfully")})

app.listen(PORT, () =>
  console.log(`Application is listening on port ${PORT}!`)
);
