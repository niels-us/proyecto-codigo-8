import React, { useState, useEffect, useRef } from 'react';

export const Dashboard = ({ venta, categoria }) => {

    let totalVentas = venta.map((num, index) => {
        return totalVentas = +num.total
    });

    let undVentas = venta.map((num, index) => {
        return num.cantidad
    });

    let ventaCategoria = venta.map((num, index) => {
        return num.categoria
    });

    let sumVentas = totalVentas.reduce((accumulator, currentValue) => accumulator + currentValue, 0);
    let sumUnd = undVentas.reduce((accumulator, currentValue) => accumulator + currentValue, 0);

    return (
        <div className="grid">
            <div className="col-12 lg:col-6 xl:col-3">
                <div className="card mb-0">
                    <div className="flex justify-content-between mb-3">
                        <div>
                            <span className="block text-500 font-medium mb-3">Ventas Totales</span>
                            <div className="text-900 font-medium text-xl">S/. {sumVentas}</div>
                        </div>
                        <div className="flex align-items-center justify-content-center bg-blue-100 border-round" style={{ width: '2.5rem', height: '2.5rem' }}>
                            <i className="pi pi-shopping-cart text-blue-500 text-xl" />
                        </div>
                    </div>
                    <span className="text-green-500 font-medium">Ventas</span>
                    <span className="text-500"> muestra el total de ventas</span>
                </div>
            </div>
            <div className="col-12 lg:col-6 xl:col-3">
                <div className="card mb-0">
                    <div className="flex justify-content-between mb-3">
                        <div>
                            <span className="block text-500 font-medium mb-3">Productos Vendidos</span>
                            <div className="text-900 font-medium text-xl">{sumUnd}</div>
                        </div>
                        <div className="flex align-items-center justify-content-center bg-orange-100 border-round" style={{ width: '2.5rem', height: '2.5rem' }}>
                            <i className="pi pi-map-marker text-orange-500 text-xl" />
                        </div>
                    </div>
                    <span className="text-green-500 font-medium">Und </span>
                    <span className="text-500">Total de unidades vendidas</span>
                </div>
            </div>
            <div className="col-12 lg:col-6 xl:col-3">
                <div className="card mb-0">
                    <div className="flex justify-content-between mb-3">
                        <div>
                            <span className="block text-500 font-medium mb-3">Total Categorias</span>
                            <div className="text-900 font-medium text-xl">{categoria.length}</div>
                        </div>
                        <div className="flex align-items-center justify-content-center bg-cyan-100 border-round" style={{ width: '2.5rem', height: '2.5rem' }}>
                            <i className="pi pi-inbox text-cyan-500 text-xl" />
                        </div>
                    </div>
                    <span className="text-green-500 font-medium">Und  </span>
                    <span className="text-500">Total de categias</span>
                </div>
            </div>
            <div className="col-12 lg:col-6 xl:col-3">
                <div className="card mb-0">
                    <div className="flex justify-content-between mb-3">
                        <div>
                            <span className="block text-500 font-medium mb-3">Numero de transacciones</span>
                            <div className="text-900 font-medium text-xl">{ventaCategoria.length}</div>
                        </div>
                        <div className="flex align-items-center justify-content-center bg-purple-100 border-round" style={{ width: '2.5rem', height: '2.5rem' }}>
                            <i className="pi pi-comment text-purple-500 text-xl" />
                        </div>
                    </div>
                    <span className="text-green-500 font-medium">N° </span>
                    <span className="text-500">Cantidad de ventas</span>
                </div>
            </div>
        </div>

    );
}
