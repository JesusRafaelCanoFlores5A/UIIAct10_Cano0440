import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:gap/gap.dart';

class TabProveedores extends StatelessWidget {
  final String idProductos;
  final String nombreProductos;
  final String precioProducto;
  final String descuentoProductos;

  final String categoria;
  final String numeroExistencias;
  final String proveedor;
  final String fechaLlegada;
  TabProveedores(
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
        backgroundColor: const Color(0xff3fa82a),
        title: const Text(
          "Tabla Proveedores",
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
      DataColumn(label: Text("idProveedor")),
      DataColumn(label: Text(idProductos)),
    ];
  }

  List<DataRow> _createRows() {
    return [
      DataRow(cells: [
        DataCell(Text("idEmpleado")),
        DataCell(Text(nombreProductos)),
      ]),
      DataRow(cells: [
        DataCell(Text("idProducto")),
        DataCell(Text(precioProducto)),
      ]),
      DataRow(cells: [
        DataCell(Text("idPintura")),
        DataCell(Text(descuentoProductos)),
      ]),
      DataRow(cells: [
        DataCell(Text("nombreProveedor")),
        DataCell(Text(categoria)),
      ]),
      DataRow(cells: [
        DataCell(Text("fechaLlegada")),
        DataCell(Text(numeroExistencias)),
      ]),
      DataRow(cells: [
        DataCell(Text("cantidadProducto")),
        DataCell(Text(proveedor)),
      ]),
      DataRow(cells: [
        DataCell(Text("existencias")),
        DataCell(Text(fechaLlegada)),
      ]),
    ];
  }
}
