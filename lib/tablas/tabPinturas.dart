import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:gap/gap.dart';

class TabPinturas extends StatelessWidget {
  final String idProductos;
  final String nombreProductos;
  final String precioProducto;
  final String descuentoProductos;

  final String categoria;
  final String numeroExistencias;
  final String proveedor;
  final String fechaLlegada;
  TabPinturas(
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
        backgroundColor: const Color(0xffca6a1c),
        title: const Text(
          "Tabla Pinturas",
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
      DataColumn(label: Text("IdPintura")),
      DataColumn(label: Text(idProductos)),
    ];
  }

  List<DataRow> _createRows() {
    return [
      DataRow(cells: [
        DataCell(Text("NombrePintura")),
        DataCell(Text(nombreProductos)),
      ]),
      DataRow(cells: [
        DataCell(Text("PrecioPintura")),
        DataCell(Text(precioProducto)),
      ]),
      DataRow(cells: [
        DataCell(Text("DescuentoPintura")),
        DataCell(Text(descuentoProductos)),
      ]),
      DataRow(cells: [
        DataCell(Text("MarcaPintura")),
        DataCell(Text(categoria)),
      ]),
      DataRow(cells: [
        DataCell(Text("Litros")),
        DataCell(Text(numeroExistencias)),
      ]),
      DataRow(cells: [
        DataCell(Text("ProveedorPintura")),
        DataCell(Text(proveedor)),
      ]),
      DataRow(cells: [
        DataCell(Text("CodigoPintura")),
        DataCell(Text(fechaLlegada)),
      ]),
    ];
  }
}
