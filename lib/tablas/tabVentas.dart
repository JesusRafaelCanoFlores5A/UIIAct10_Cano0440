import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:gap/gap.dart';

class TabVentas extends StatelessWidget {
  final String idProductos;
  final String nombreProductos;
  final String precioProducto;
  final String descuentoProductos;

  final String categoria;
  final String numeroExistencias;
  final String proveedor;
  final String fechaLlegada;
  TabVentas(
      this.idProductos,
      this.nombreProductos,
      this.precioProducto,
      this.descuentoProductos,
      this.categoria,
      this.numeroExistencias,
      this.proveedor,
      this.fechaLlegada,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0xff5435ad),
        title: const Text(
          "Tabla Ventas",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        height: 150,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 1,
            itemBuilder: (context, count) {
              return _createDataTable();
            }),
      ),
    );
  }

  //
  DataTable _createDataTable() {
    return DataTable(columns: _createColumns(), rows: _createRows());
  }

  List<DataColumn> _createColumns() {
    return [
      DataColumn(label: Text("idVenta")),
      DataColumn(label: Text(idProductos)),
    ];
  }

  List<DataRow> _createRows() {
    return [
      DataRow(cells: [
        DataCell(Text("idProducto")),
        DataCell(Text(nombreProductos)),
      ]),
      DataRow(cells: [
        DataCell(Text("Nombre")),
        DataCell(Text(precioProducto)),
      ]),
      DataRow(cells: [
        DataCell(Text("Cantidad")),
        DataCell(Text(descuentoProductos)),
      ]),
      DataRow(cells: [
        DataCell(Text("PrecioTotal")),
        DataCell(Text(categoria)),
      ]),
      DataRow(cells: [
        DataCell(Text("Descuento")),
        DataCell(Text(numeroExistencias)),
      ]),
      DataRow(cells: [
        DataCell(Text("pagoCliente")),
        DataCell(Text(proveedor)),
      ]),
      DataRow(cells: [
        DataCell(Text("Cambio")),
        DataCell(Text(fechaLlegada)),
      ]),
    ];
  }
}
