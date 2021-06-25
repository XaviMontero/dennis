
import 'package:json_annotation/json_annotation.dart';
part 'medida.g.dart';


@JsonSerializable()
class Medida {
  String id;
  num temperatura;
  num ph;
  num densidad;
  DateTime fechaHora;

  Medida({
      required this.id,
      required this.temperatura,
      required this.ph,
      required this.densidad,
      required this.fechaHora});

   factory Medida.fromJson(Map<String, dynamic> json) =>
      _$MedidaFromJson(json);
  Map<String, dynamic> toJson() => _$MedidaToJson(this);
}
