// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'selling_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SellingState _$SellingStateFromJson(Map<String, dynamic> json) =>
    _SellingState(
      customer:
          json['customer'] == null
              ? null
              : Customer.fromJson(json['customer'] as Map<String, dynamic>),
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      session: Session.fromJson(json['session'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SellingStateToJson(_SellingState instance) =>
    <String, dynamic>{
      'customer': instance.customer,
      'user': instance.user,
      'session': instance.session,
    };
