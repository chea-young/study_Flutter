import 'dart:convert';
import 'model_quiz.dart';

//parsed된 데이터를 퀴즈 모델로 변환시키는 것
List<Quiz> parseQuizs(String responseBody) {
  final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
  return parsed.map<Quiz>((json) => Quiz.fromJson(json)).toList();
}
