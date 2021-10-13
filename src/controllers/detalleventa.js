const { pool } = require("../databases/conexion");

const getDetalleVenta = async (req, res) => {
  // const response = await pool.query("select * from tienda_detalleventa");
  // const response = await pool.query("select v.*,d.* from tienda_venta v inner join tienda_detalleventa d on d.ventas_id = v.id");
  // const response = await pool.query("select t1.*, t2.*, t3.* from tienda_venta t1 inner join tienda_detalleventa t2 on t1.id = t2.ventas_id inner join tienda_producto t3 on t2.producto_id=t3.id");
  const response = await pool.query("select t1.total as total, t1.fecha as fecha, t2.precio as precio , t2.cantidad as cantidad, t3.nombre as nombre, t4.nombre as categoria, t5.nombre as usuario from tienda_venta t1 inner join tienda_detalleventa t2 on t1.id = t2.ventas_id inner join tienda_producto t3 on t2.producto_id=t3.id inner join tienda_categoria t4 on t3.categoria_id=t4.id inner join tienda_usuario t5 on t1.usuario_id=t5.id");
 
  res.status(200).json({
    status: true,
    content: response.rows,
  });
};

const getDetalleVentaId = async (req, res) => {
  const id = req.params.id;
  const response = await pool.query(
    "select * from tienda_detalleventa where ventas_id=$1",
    [id]
  );
  res.status(201).json({
    status: true,
    content: response.rows,
  });
};

const createDetalleVenta = async (req, res) => {
  const { cantidad, precio, descuento, producto_id, ventas_id } = req.body;

  const response = await pool.query(
    "insert into tienda_detalleventa(cantidad, precio, descuento, producto_id, ventas_id) values($1,$2,$3,$4,$5)",
    [cantidad, precio, descuento, producto_id, ventas_id]
  );

  res.status(202).json({
    status: true,
    content: "Detalle de la venta registrada",
  });
};

module.exports = {
  getDetalleVenta,
  getDetalleVentaId,
  createDetalleVenta,
};
