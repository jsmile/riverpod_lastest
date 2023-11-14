import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../models/activity_model.dart';

// Necessary for code-generation to work
part 'provider.g.dart';

/// Return Type 에 알맞는 Provider 가 생성됨. ( 예: FutureProvider type 이 생성됨. )
/// This will create a provider named `activityProvider`
/// which will cache the result of this function.
/// - If the UI stops using this provider, the cache will be destroyed. Then,
///   if the UI ever uses the provider again, that a new network request will be made.
@riverpod
Future<ActivityModel> activityModel(ActivityModelRef ref) async {
  // Using package:http, we fetch a random activity from the Bored API.
  final response = await http.get(Uri.https('boredapi.com', '/api/activity'));
  // Using dart:convert, we then decode the JSON payload into a Map data structure.
  final json = jsonDecode(response.body) as Map<String, dynamic>;
  // Finally, we convert the Map into an Activity instance.
  return ActivityModel.fromMap(json);
  // return ActivityModel.fromJson(json);
}
