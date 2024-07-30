import 'dart:io';

import 'package:flutter_dio/classes/pessoa.dart';

void main() {
  print('Digite seu peso em kg:');
  double? peso = double.parse(stdin.readLineSync()!);

  print('Digite sua altura em metros:');
  double? altura = double.parse(stdin.readLineSync()!);

  Pessoa pessoa = Pessoa(peso, altura);

  double imc = pessoa.calcularIMC();
  print('Seu IMC é: ${imc.toStringAsFixed(2)}');

  String classificacao = pessoa.classificarIMC();
  print('Classificação: $classificacao');
}
