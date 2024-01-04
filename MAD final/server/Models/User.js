const mongoose = require("mongoose");
const express = require("express");
const { Schema } = mongoose;

const UserSchema = new Schema({
  Name: {
    type: String,
    require: true,
  },
  Email: {
    type: String,
    unique: true,
    require: true,
  },
  Password: {
    type: String,
    require: true,
  }
}, {timestamps : true });

module.exports = mongoose.model("user", UserSchema);
