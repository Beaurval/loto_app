class Draw {
  final String id;
  final String draw_date;
  final String num1;
  final String num2;
  final String num3;
  final String num4;
  final String num5;
  final String num6;

  Draw({this.id,this.draw_date, this.num1, this.num2, this.num3, this.num4, this.num5, this.num6});

  factory Draw.fromJson(Map<String, dynamic> json) {

    return Draw(
      id: json['ID'],
      draw_date: json['DATE_TIRAGE'],
      num1: json['NUMERO_1'],
      num2: json['NUMERO_2'],
      num3: json['NUMERO_3'],
      num4: json['NUMERO_4'],
      num5: json['NUMERO_5'],
      num6: json['NUMERO_6'],
    );
  }
}