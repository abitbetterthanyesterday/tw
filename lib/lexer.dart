import 'dart:convert';
import 'dart:io';

const filePath = "./test/pending.data";

void main() {
  File(filePath).readAsString().then((String contents) {
    print(contents);
  });
}

class TaskParser {
  String input;

  TaskParser(this.input);

  List<Task> parse(){
    const splitter = LineSplitter();
    return splitter.convert(input).map((line) => Task(line)).toList();
  }
}

class Task{
    String string;
    Task(this.string);
  }
