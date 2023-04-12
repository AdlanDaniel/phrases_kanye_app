// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:phrases_kanye_west/features/service/service.dart';

class HomeController extends GetxController {
  Service service;
  HomeController({
    required this.service,
  });
  final phrase = 'Clique para exibir frase'.obs;
  Future<void> getPhraseKanyeWest() async {
    try {
      phrase.value = await service.getPhraseKanyeWest();
    } on ServiceException {
      ScaffoldMessenger.of(Get.context!).showSnackBar(
          const SnackBar(content: Text('Erro ao buscar mensagem')));
    }
  }
}
