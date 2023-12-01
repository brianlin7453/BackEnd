const { PrismaClient } = require('@prisma/client');
const express = require('express'); 
const bodyParser  = require('body-parser');

const jsonParser = bodyParser.json(); 
const prisma = new PrismaClient();

const app = express();  

app.get('/item/:serialNumber', jsonParser, (req, res) => {
    console.log(req.body);
    const item_id = req.params.serialNumber;
    console.log(item_id);
    res.status(200).send({message: "message"});
})

app.post('/item', jsonParser, async (req, res) => {
    console.log('here');
    const {
        serial_number,
        brand_name,
        volume,
        retail_price,
        on_sale
    } = req.body;
    const newInventory = await prisma.Inventory.create({
    data: {
      serial_number: serial_number,
      brand_name: brand_name,
      volume: volume,
      retail_price: retail_price,
      on_sale: on_sale
    },
  });
  res.status(200).send({message: "message"});
})

app.put('/item/:serialNumber', (req, res) => {
    const item_id = req.params.serialNumber;
    console.log(item_id);
    res.status(200).send({message: "message"});
})

app.delete('/item/:serialNumber', (req, res) => {
    const item_id = req.params.serialNumber;
    console.log(item_id);
    res.status(200).send({message: "message"});
})

const PORT = 3000; 
app.listen(PORT, (error) => { 
    if(!error) 
        console.log("Server is Successfully Running, and App is listening on port "+ PORT) 
    else 
        console.log("Error occurred, server can't start", error); 
    } 
); 