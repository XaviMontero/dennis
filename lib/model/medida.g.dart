// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medida.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Medida _$MedidaFromJson(Map<String, dynamic> json) {
  return Medida(
    id: json['id'] as String,
    temperatura: json['temperatura'] as num,
    ph: json['ph'] as num,
    densidad: json['densidad'] as num,
    fechaHora: DateTime.parse(json['fechaHora'] as String),
  );
}

Map<String, dynamic> _$MedidaToJson(Medida instance) => <String, dynamic>{
      'id': instance.id,
      'temperatura': instance.temperatura,
      'ph': instance.ph,
      'densidad': instance.densidad,
      'fechaHora': instance.fechaHora.toIso8601String(),
    };
