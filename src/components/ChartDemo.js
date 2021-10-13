import React from 'react';
import { Chart } from 'primereact/chart';
import { format } from "date-fns";

export const ChartDemo = ({ venta }) => {

    let FechaVenta = venta.map((num, index) => {
        let date = new Date(num.fecha);
        return format(date, "MM/dd hh:mm");
    });

    let TotalVenta = venta.map((num, index) => {
        return num.total
    });

    // Categorias Unicas
    const nombreCategoria = [...new Set(venta.map(item => item.categoria))];
    // Total por Catgeoria
    const ventaCategoriaTotal = []
    nombreCategoria.forEach(function (item) {
        const ventaCategoriaFiltro = venta.filter(obj => obj.categoria === item);
        let ventaCategoriaTotalMap = ventaCategoriaFiltro.map((num, index) => parseFloat(num.total));
        let ventaCategoriaTotalSuma = ventaCategoriaTotalMap.reduce((accumulator, currentValue) => accumulator + currentValue, 0);
        ventaCategoriaTotal.push(ventaCategoriaTotalSuma)
    })

    // Producto Unicas
    const nombreProducto = [...new Set(venta.map(item => item.nombre))];
    // Total por Catgeoria
    const ventaProductoTotal = []
    nombreProducto.forEach(function (item) {
        const ventaProductoFiltro = venta.filter(obj => obj.nombre === item);
        let ventaProductoTotalMap = ventaProductoFiltro.map((num, index) => parseFloat(num.total));
        let ventaProductoTotalSuma = ventaProductoTotalMap.reduce((accumulator, currentValue) => accumulator + currentValue, 0);
        ventaProductoTotal.push(ventaProductoTotalSuma)
    })

     // Usuario Unicas
     const nombreUsuario = [...new Set(venta.map(item => item.usuario))];
     // Total por Usuario
     const ventaUsuarioTotal = []
     nombreUsuario.forEach(function (item) {
         const ventaUsuarioFiltro = venta.filter(obj => obj.usuario === item);
         let ventaUsuarioTotalMap = ventaUsuarioFiltro.map((num, index) => parseFloat(num.total));
         let ventaUsuarioTotalSuma = ventaUsuarioTotalMap.reduce((accumulator, currentValue) => accumulator + currentValue, 0);
         ventaUsuarioTotal.push(ventaUsuarioTotalSuma)
     })

    const lineData = {
        labels: FechaVenta,
        datasets: [
            {
                label: 'Ventas por Dia',
                data: TotalVenta,
                fill: false,
                backgroundColor: '#00bb7e',
                borderColor: '#00bb7e',
                tension: .4
            },
            // {
            //     label: 'Second Dataset',
            //     data: [28, 48, 40, 19, 86, 27, 90],
            //     fill: false,
            //     backgroundColor: '#00bb7e',
            //     borderColor: '#00bb7e',
            //     tension: .4
            // }
        ]
    };

    const pieData = {
        labels: nombreProducto,
        datasets: [
            {
                label: 'Ventas por Producto',
                data: ventaProductoTotal,
                backgroundColor: [
                    "#00bb7e",
                    // "#00B444"
                    // "#36A2EB",
                    // "#FFCE56"
                ],
                // hoverBackgroundColor: [
                //     "#FF6384",
                //     "#36A2EB",
                //     "#FFCE56"
                // ]
            }
        ]
    };


    const barData = {
        labels: nombreCategoria,
        datasets: [
            {
                label: 'Ventas por Categorias',
                backgroundColor: '#00bb7e',
                data: ventaCategoriaTotal
            },
            // {
            //     label: 'My Second dataset',
            //     backgroundColor: '#00bb7e',
            //     data: [28, 48, 40, 19, 86, 27, 90]
            // }
        ]
    };

    const doughnutData = {
        labels: nombreUsuario,
        datasets: [
            {
                data: ventaUsuarioTotal,
                backgroundColor: [
                    "#FF6384",
                    "#36A2EB",
                    "#FFCE56"
                ],
                hoverBackgroundColor: [
                    "#FF6384",
                    "#36A2EB",
                    "#FFCE56"
                ]
            }
        ]
    };


    return (
        <div className="grid p-fluid">
            <div className="col-12 lg:col-6">
                <div className="card">
                    <h5>Ventas por Dia</h5>
                    <Chart type="line" data={lineData} />
                </div>

                <div className="card">
                    <h5>Ventas por Productos</h5>
                    <Chart type="bar" data={pieData} />
                </div>

            </div>
            <div className="col-12 lg:col-6">
                <div className="card">
                    <h5>Ventas por Categorias</h5>
                    <Chart type="bar" data={barData} />
                </div>

                <div className="card flex flex-column align-items-center">
                    <h5>Ventas por Categorias</h5>
                    <Chart type="doughnut" data={doughnutData} style={{ width: '50%' }} />
                </div>

            </div>
        </div>
    )
}
