import 'package:dennis_app/model/medida.dart';
import 'package:json_annotation/json_annotation.dart';

part 'proveedor.g.dart';

@JsonSerializable(explicitToJson: true)
class Proveedor {
  String id;
  String nombre;
  String url;
  String direccion;
  Medida medida;
  Proveedor(
      {
      required this.id,
      required this.nombre,
      required this.url,
      required this.direccion,
      required this.medida
      });

  factory Proveedor.fromJson(Map<String, dynamic> json) =>
      _$ProveedorFromJson(json);
  Map<String, dynamic> toJson() => _$ProveedorToJson(this);
}
