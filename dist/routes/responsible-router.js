import { Router } from "express";
import { addResponsible } from "../controller/responsible-controller.js";
var router = Router();
router.post("/responsible", addResponsible);
export default router;
