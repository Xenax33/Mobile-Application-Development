const express = require("express");
const router = express.Router();
const Dish = require("../Models/Dish");
router.use(express.json());

router.get("/get", async (req, res) => {
    const data = await Dish.find();
    res.send({ success: true, data: data });
  });

  router.post("/create", async (req, res) => {
    const data = Dish(req.body);
    await data.save().catch((err) => {
      res.send({ success: false });
    });
    res.send({ success: true });
  });
  

module.exports = router;