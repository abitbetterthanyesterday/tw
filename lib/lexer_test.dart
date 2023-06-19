import "dart:io";

import "package:taskwarrior_client/lexer.dart";
import "package:test/test.dart";


void main(){
  group("Lexer", ()  {
    test('it returns null with null input', (){
      TestFile testFile = TestFile("");
      expect(TaskParser(testFile.content).parse(), hasLength(0));
      testFile.teardown();
      });
    });

    test('it returns one task if there is one', (){
      TestFile testFile = TestFile('''
      [ description: 'hello']
      ''');
      expect(TaskParser(testFile.content).parse(), hasLength(1));
      testFile.teardown();
    });

    test('it returns one task if there is one', (){
      TestFile testFile = TestFile('''
      [ description: 'hello']
      [ description 'world']
      ''');
      expect(TaskParser(testFile.content).parse(), hasLength(2));
      testFile.teardown();
    });
  }


class TestFile{
  static const testFolder = "./test/";
  final file = File('$testFolder/test.data');

  String content;

  TestFile(this.content){
   file.writeAsStringSync(content);
  }


  teardown(){
      file.deleteSync();
  }
}

