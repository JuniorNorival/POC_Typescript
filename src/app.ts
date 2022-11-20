import express from "express";
import cors from "cors";
import responsibleRouter from "./routes/responsible-router.js";
import tasksRouter from "./routes/tasks-router.js";
const server = express();
server.use(express.json());
server.use(cors());

server.use(responsibleRouter);
server.use(tasksRouter);
server.listen(4000, () => console.log("to rodando"));
