const mongoose = require("mongoose");
const express = require("express");
const { Schema } = mongoose;

const DishSchema = new Schema({
  Name: {
    type: String,
    require: true,
  },
  Price: {
    type: Number,
    require: true,
  },
  Available: {
    type: Boolean,
    default: true
  },
  RestaurantId:{
    type: String,
  },
  Type: {
    type: String,
  }
}, {timestamps : true });

module.exports = mongoose.model("dish", DishSchema);
