const express = require('express');
const router = express.Router();
require('dotenv').config();
router.get('/test',(req,res)=> {
    res.json({message:"api test successfully"});
});

module.exports = router;