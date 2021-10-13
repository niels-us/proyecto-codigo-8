const { Router } = require("express");
const router = Router();
const { getVenta, getVentaId, createVenta, getVentaMax } = require("../controllers/venta");

router.get("/venta",getVenta)
router.get("/venta/:id",getVentaId)
router.post("/venta",createVenta)
router.get("/ventamax",getVentaMax)

module.exports = router