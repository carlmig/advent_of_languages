import 'package:dart/dart.dart' as dart;

void main(List<String> arguments) {

  var levels = int.parse(arguments[0]);

  var spaces = levels -1;
  var asterisks = 1;
  for(int i=0;i<levels;i++){

    String line = dart.get_chars(" ", spaces) + dart.get_chars("*", asterisks);
    print(line);
    spaces--;
    asterisks = asterisks +2;
  }

  print(dart.get_chars(" ", levels-1) + "|");
}
