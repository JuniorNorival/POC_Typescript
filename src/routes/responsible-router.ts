import { Router } from "express";
import { addResponsible } from "../controller/responsible-controller.js";
import { validateName } from "../middlewares/responsible-middleware.js";

const router = Router();
router.post("/responsible", validateName, addResponsible);

export default router;
