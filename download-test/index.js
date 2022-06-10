const express = require("express")
const app1 = express();
const PORT = 3000;
const fs = require('fs-extra')

// read all file into the 'D:\download-test\public\assets'
app1.get('/list', async(req,res) => {
    // read all file from folder
    const fileNames = await fs.readdir(__dirname+'/public/assets');
    res.json(fileNames)
})

app1.get("/download/:filename", (req, res) => {
    // filepath -> variable to hold the full path of the file which will be downloaded.
    // req.params.filename -> to obtain the name of the file to be downloaded from URL parameter. like Banjaara.png
    const filePath = __dirname + "/public/assets/" + req.params.filename;
//     res.download() is used to download a file on the user’s computer. It takes 3 parameters.

// In the above usage,

// filepath-> Path to the file.
// “downloaded-book.png” -> Alternate name for the file when a user downloads it. (optional)
// (err) => {} -> Error callback. (optional)
    res.download(
        filePath, 
        req.params.filename, 
        (err) => {
            if (err) {
                res.send({
                    error : err,
                    msg   : "Problem downloading the file"
                })
            }
    });
});
app1.listen( PORT, () => console.log("Server listening to port " + PORT))