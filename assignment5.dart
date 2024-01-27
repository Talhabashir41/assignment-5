import 'dart:io';

void main() {
 
  var ab;
  while (ab != '2') {
     print(
      "1. Length Conversion\n2. Temperature conversion\n3. Time conversion\nwrite its number to perform action");
    var a = stdin.readLineSync()!;
    if (a == '1') {
      lengthconversion();
    }
    if (a == '2') {
      tempconversion();
    }
    if (a == '3') {
      TimeConversion();
    }
    print(
        'Do you want to Continue\n1. Yes\n2. No\nwrite its number to perform action');
    ab = stdin.readLineSync();
  }
}

lengthconversion() {
  print(
      '1. Meter to kilometers \n2.Kilometer to Meters \n3.feet to Inches \n4.Inches to Feet \n5.Centimeter to Meter \n6.Meter to Centimeter\nwrite its number to perform action');
  var userchoose = stdin.readLineSync();
  if (userchoose == '1') {
    print('meter');
    num meter = int.parse(stdin.readLineSync()!);
    print("kilometer :${meter / 1000}");
  }
  if (userchoose == '2') {
    print('kilometer');
    num Kilometer = int.parse(stdin.readLineSync()!);
    print("meter :${Kilometer * 1000}");
  }
  if (userchoose == '3') {
    print('feet');
    num feet = int.parse(stdin.readLineSync()!);
    print("Inches :${feet * 12}");
  }
  if (userchoose == '4') {
    print('Inches');
    num inches = int.parse(stdin.readLineSync()!);
    print("feet :${inches / 12}");
  }
  if (userchoose == '5') {
    print('Centimeter ');
    num Centimeter = int.parse(stdin.readLineSync()!);
    print("meter :${Centimeter / 100}");
  }
  if (userchoose == '6') {
    print('meter');
    num meter = int.parse(stdin.readLineSync()!);
    print("centimeter :${meter * 100}");
  }
}

tempconversion() {
  print(
      "1.Fahrenheit to Celsius \n2.Celsius to Fahrenheit\nwrite its number to perform action");
  var userchoose = stdin.readLineSync();
  if (userchoose == '1') {
    print('Fahrenheit');
    num Fahrenheit = int.parse(stdin.readLineSync()!);
    print("Celsius :${(Fahrenheit - 32) * 5 / 9}C");
  }
  if (userchoose == '2') {
    print('Celsius');
    num Celsius = int.parse(stdin.readLineSync()!);
    print("Fahrenheit:${(Celsius * 9 / 5) + 32}F");
  }
}

TimeConversion() {
  print('FOR TIME CONVERSION');
  print(
      '1:Seconds to Minutes\n2:Minutes to Seconds\n3:Minutes to Hours\n4:Seconds to Hours\n5:Milliseconds to Minutes\n6:Milliseconds to Hours\nwrite its number to perform action');
  var want = int.parse(stdin.readLineSync()!);
  if (want == 1) {
    print('Seconds to Minutes');
    stdout.write('Seconds:');
    num seconds = num.parse(stdin.readLineSync()!);
    print('Minures:${seconds / 60}');
  } else if (want == 2) {
    print('Minutes to Seconds');
    stdout.write('Minutes:');
    num minutes = num.parse(stdin.readLineSync()!);
    print('Seconds:${minutes * 60}');
  } else if (want == 3) {
    print('Minutes to Hours');
    stdout.write('Minutes:');
    num minutes = num.parse(stdin.readLineSync()!);
    print('Hours:${minutes / 60}');
  } else if (want == 4) {
    print('Seconds to Hours');
    stdout.write('Seconds:');
    num seconds = num.parse(stdin.readLineSync()!);
    print('Hours:${seconds / 3600}');
  } else if (want == 5) {
    print('Milliseconds to Minutes');
    stdout.write('Milliseconds:');
    num Milliseconds = num.parse(stdin.readLineSync()!);
    print('Minutes:${(Milliseconds / 1000) / 60}');
  } else if (want == 6) {
    print('Milliseconds to Hours');
    stdout.write('Milliseconds:');
    num Milliseconds = num.parse(stdin.readLineSync()!);
    num minutes = (Milliseconds / 1000) / 60;
    print('Hours:${minutes / 60}');
  }
}
