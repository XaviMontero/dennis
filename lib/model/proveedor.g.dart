// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'proveedor.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Proveedor _$ProveedorFromJson(Map<String, dynamic> json) {
  return Proveedor(
    id: json['id'] as String,
    nombre: json['nombre'] as String,
    url: json['url'] as String,
    direccion: json['direccion'] as String,
    medida: Medida.fromJson(json['medida'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ProveedorToJson(Proveedor instance) => <String, dynamic>{
      'id': instance.id,
      'nombre': instance.nombre,
      'url': instance.url,
      'direccion': instance.direccion,
      'medida': instance.medida.toJson(),
    };
