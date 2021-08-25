import 'dart:convert';
import 'dart:io';

Future<List<dynamic>> read_json() async {
  var x = json.decode(await new File('sample.json').readAsString());
  return x;
}

List<String> retrive_catagories(data) {
  List<String> catagories = [];
  for (var i in data) {
    try {
      if (i['category'] == "") {
        print("Please enter a Valid Catagory!");
      }
      catagories.add(i['category']);
    } catch (e) {
      print('JSON OBJECT NOT CORRECT: $e');
    }
  }
  return catagories.toSet().toList();
}

void Display(data, catagories) {
  for (var i in catagories) {
    print("Category: " + i);
    for (var j in data) {
      if (j['category'] == i) {
        print("ID: " + j['productID'].toString());
        print("Name: " + j['productName']);
        print("Price: " + j['price'].toString());
      }
    }
  }
}

void main() {
  List<String> catagories = [];
  read_json().then((data) =>
      {catagories = retrive_catagories(data), Display(data, catagories)});
}
