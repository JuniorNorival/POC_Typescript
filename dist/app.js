import express from "express";
import responsibleRouter from "./routes/responsible-router.js";
var server = express();
server.use(express.json());
server.use(responsibleRouter);
server.listen(4000, function () { return console.log("to rodando"); });
