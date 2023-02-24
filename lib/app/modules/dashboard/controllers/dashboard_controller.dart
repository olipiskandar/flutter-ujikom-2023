// ignore_for_file: unnecessary_overrides
import 'dart:async';
import 'dart:convert';
import 'package:get/get.dart';
import 'package:project_ujikom/app/data/entertainment_response.dart';
import 'package:project_ujikom/app/data/headline_response.dart';
import 'package:project_ujikom/app/data/sports_response.dart';
import 'package:project_ujikom/app/data/technology_response.dart';
import 'package:project_ujikom/app/utils/api.dart';

class DashboardController extends GetxController {
  final _getConnect = GetConnect();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  Future<HeadlineResponse> getHeadline() async {
    final response = await _getConnect.get(BaseUrl.headline);
    return HeadlineResponse.fromJson(jsonDecode(response.body));
  }

  Future<EntertainmentResponse> getEntertainment() async {
    final response = await _getConnect.get(BaseUrl.entertainment);
    return EntertainmentResponse.fromJson(jsonDecode(response.body));
  }

  Future<SportResponse> getSports() async {
    final response = await _getConnect.get(BaseUrl.sports);
    return SportResponse.fromJson(jsonDecode(response.body));
  }

  Future<TechnologyResponse> getTechnology() async {
    final response = await _getConnect.get(BaseUrl.technology);
    return TechnologyResponse.fromJson(jsonDecode(response.body));
  }
}
