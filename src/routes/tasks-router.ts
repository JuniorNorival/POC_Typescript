import { Router } from "express";
import * as task from "../controller/task-controller.js";
import { searchTask, validateTask } from "../middlewares/tasks-middleware.js";

const router = Router();
router.get("/tasks", task.list);
router.post("/tasks", validateTask, task.create);
router.delete("/tasks/:id", searchTask, task.taskDelete);
router.put("/tasks/:id", searchTask, task.update);
export default router;
