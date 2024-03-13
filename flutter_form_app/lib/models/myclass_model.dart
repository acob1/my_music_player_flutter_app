import 'package:flutter/foundation.dart';

@immutable
class UserModel {
  final bool isPlaying;
  const UserModel({
    required this.isPlaying,
  });

  UserModel copyWith({
    bool? isPlaying,
  }) {
    return UserModel(
      isPlaying: isPlaying ?? this.isPlaying,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'isPlaying': isPlaying});

    return result;
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      isPlaying: map['isPlaying'] ?? false,
    );
  }

  @override
  String toString() {
    return 'UserModel( isPlaying: $isPlaying)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is UserModel && other.isPlaying == isPlaying;
  }

  @override
  int get hashCode {
    return isPlaying.hashCode;
  }
}
