class ClimaModel{
  final double temperatura;
  final double tempMin;
  final double tempMax;
  final double sensacaoTermica;
  final String descricao;
  final String icone;
  final int umidade;
  final int visibilidade;
  final int pressao;
  final double velocidadeVento;
  final int direcaoVento;

  ClimaModel({
      required this.temperatura,
      required this.tempMin,
      required this.tempMax,
      required this.sensacaoTermica,
      required this.descricao,
      required this.icone,
      required this.umidade,
      required this.visibilidade,
      required this.pressao,
      required this.velocidadeVento,
      required this.direcaoVento,
  });

  factory ClimaModel.fromJson(Map<String, dynamic> json){
    return ClimaModel(
        temperatura: json["main"]['temp'].toDouble(),
        tempMin: json["main"]['temp_min'].toDouble(),
        tempMax: json["main"]['temp_max'].toDouble(),
        sensacaoTermica: json["main"]['feels_like'].toDouble(),
        descricao: json["weather"][0]['description'].toString(),
        icone: json["weather"][0]['icon'].toString(),
        umidade: json["main"]['humidity'].toInt(),
        visibilidade: json["visibility"].toInt(),
        pressao: json["main"]['pressure'].toInt(),
        velocidadeVento: json["wind"]['speed'].toDouble(),
        direcaoVento: json["wind"]['deg'].toInt()
    );
  }
}