import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

// part 'activity_model.g.dart';

@immutable
class ActivityModel extends Equatable {
  final String key;
  final String activity;
  final String type;
  final int participants;
  final double price;

  const ActivityModel({
    required this.key,
    required this.activity,
    required this.type,
    required this.participants,
    required this.price,
  });

  @override
  List<Object?> get props => throw UnimplementedError();

  ActivityModel copyWith({
    String? key,
    String? activity,
    String? type,
    int? participants,
    double? price,
  }) {
    return ActivityModel(
      key: key ?? this.key,
      activity: activity ?? this.activity,
      type: type ?? this.type,
      participants: participants ?? this.participants,
      price: price ?? this.price,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'key': key,
      'activity': activity,
      'type': type,
      'participants': participants,
      'price': price,
    };
  }

  factory ActivityModel.fromMap(Map<String, dynamic> map) {
    return ActivityModel(
      key: map['key'] ?? '',
      activity: map['activity'] ?? '',
      type: map['type'] ?? '',
      participants: map['participants']?.toInt() ?? 0,
      price: map['price']?.toDouble() ?? 0.0,
    );
  }

  String toJson() => json.encode(toMap());

  factory ActivityModel.fromJson(String source) =>
      ActivityModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ActivityModel(key: $key, activity: $activity, type: $type, participants: $participants, price: $price)';
  }
}
