const express = require('express');
const app = express();
const bodyParser = require('body-parser');
const sequelize = require('./utils/database');

app.use(bodyParser.urlencoded({
    extended: true
}));

app.use(bodyParser.json());

const cors = require('cors');
var corsOptions = {
    origin: '*',
    optionsSuccessStatus: 200 // some legacy browsers (IE11, various SmartTVs) choke on 204 
}

app.use(cors(corsOptions))
// app.use(cors);

//Models//
const Lawyers = require('./models/LawyersModel');

const Categories = require('./models/CategoriesModel');

const Locations = require('./models/LocationsModel');

const Owners = require('./models/OwnersModel');

const Pendings = require('./models/PendingsModel');
//End Models//


// Multer //
const multer = require("multer");


var storage = multer.diskStorage({
    // destination
    destination: function (req, file, cb) {
        cb(null, './uploads/')
    },
    filename: function (req, file, cb) {
        let dt = new Date().getTime();
        // console.log("DTT : ", dt, file)
        cb(null, String(dt) + file.originalname);
    }
});

var upload = multer({ storage: storage });


app.get("/uploadPhoto", upload.single("Myfile"), function (req, res) {
    console.log('file', req.file);
    console.log(req)
    res.send(req.file);
});


var upload = multer({ storage: storage });
// End Multer //


//Routes//
const LawyersRoute = require('./routes/LawyersRoute');
app.use('/lawyers', LawyersRoute);

const CategoriesRoute = require('./routes/CategoryRoute');
app.use('/category', CategoriesRoute);

const LocationRoute = require('./routes/LocationRoute');
app.use('/location', LocationRoute);

const OwnersRoute = require('./routes/OwnersRoute');
app.use('/owners', OwnersRoute);

const PendingsRoute = require('./routes/PendingsRoute');
app.use('/pendings', PendingsRoute);
//End Routes//

app.use((req, res) => {
    res.send("Page Not Found");
})


sequelize.sync().then(result => {
    app.listen(5000);
}).catch(err => {
    logger.log("error", "ERRR " + JSON.stringify(err))
})

