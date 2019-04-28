const mongoose = require("mongoose");
const Schema = mongoose.Schema;

// this will be our data base's data structure 
const tweetSchema = new Schema({
      _id: mongoose.Schema.Types.ObjectId,
      content:String,
      retweet:Number,
      comment:Array,
      love: Number
});

// export the new Schema so we could modify it using Node.js

module.exports = mongoose.model("TweetStructure", tweetSchema);

