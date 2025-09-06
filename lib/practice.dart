//functions
/*
void main(){

  int result = (Khushi.hunderedthMultiple(2));
  print(result);
  String sResult = Khushi.stringPlusHello("Khushi");
  print(sResult);

}
class Khushi{
  static int hunderedthMultiple(int n){
    return n*100;
  }
  static String stringPlusHello(String s){
    return(s + " Hello");

  }

}


//positional parameters
void main(){
  Map userData = userMap("khushi", 21, "female", 12);
  print(userData);

}
Map userMap(String name, int age, String gender,int userClass){
  return{
    "name" : name,
    "age" : age,
    "gender" : gender,
    "userClass" : userClass
  };
}



//class and object
class Mathematics{

  int addition(int n1,int n2){
    return n1 + n2;
  }
  int subtraction(int n1,int n2){
    return n1 - n2;
  }
  int multiplication(int n1,int n2){
    return n1 * n2;
  }
  double Division(int n1,int n2){
    return n1 / n2;
  }
}
void main(){
  Mathematics mathematics = new Mathematics();
  int n1 =34;
  int n2 =17;
  int addResult = mathematics.addition(n1, n2);
  print(addResult);
  int subResult = mathematics.subtraction(n1, n2);
  print(subResult);
  int multiResult = mathematics.multiplication(n1, n2);
  print(multiResult);
  double divResult = mathematics.Division(n1, n2);
  print(divResult);

}


//constructor
class Mathematics{

  int n1=0;
  int n2=0;
  Mathematics(int n1, int n2){//parameterized constructor
    print("object is created");//constructor function
    this.n1 =n1;
    this.n2 = n2;

  }

  int addition(){
    return this.n1 + this.n2;
  }
  int subtraction(){
    return this.n1 - this.n2;
  }
  int multiplication(){
    return this.n1 * this.n2;
  }
  double Division(){
    return this.n1 / this.n2;
  }
}
void main(){
  Mathematics mathematics = new Mathematics(34,17);
  int n1 =34;
  int n2 =17;
  int addResult = mathematics.addition();
  print(addResult);
  int subResult = mathematics.subtraction();
  print(subResult);
  int multiResult = mathematics.multiplication();
  print(multiResult);
  double divResult = mathematics.Division();
  print(divResult);

}


//getter and setter
class Mathematics{
  int num = 0;
  int den = 0;
  //setter function
  void set setnumerator(int val){
    num = val *6;

  }
  void set setdenominator(int val){
    den = val *10;

  }
  //getter function
  int get getnumerator => num;
  int get getdenominator => den;


}
void main(){
  Mathematics maths = new Mathematics();
  maths.setnumerator =5;
  maths.setdenominator =7;
  print(maths.getnumerator);
  print(maths.getdenominator);

}


void main(){
  double l = 34.7;
  double b=45.8;
  double area = areaRectangle(l, b);
  print("Area of rectangle is $area");
}
double areaRectangle(double length,double breadth) => length * breadth;



//we can write it like as  by using short Hand Syntax
void main(){
  double l = 34.7;
  double b=45.8;
  String s  = areaRectangle(l, b);
  print(s);
}
String areaRectangle(double length,double breadth) => "Area of rectangle is ${length * breadth }";


//Inheritance code
void main(){
  Mobilephone mobilePhone = Mobilephone();
  mobilePhone.height =45;
  mobilePhone.width =25;
  mobilePhone.thickness =4;
  mobilePhone.printHeight();
  mobilePhone.printWidth();
  mobilePhone.printthickness();
  mobilePhone.playGames();
  mobilePhone.callContact();
}

class Electronics{
  double height =50;
  double width = 100;
  double thickness =10;

  void watch(){
    print ("Electronics Item is being watched");
  }
  void printHeight(){
    print("Height of Item = $height");
  }
  void printWidth(){
    print("width of Item = $width");
  }
  void printthickness(){
    print("thickness of Item = $thickness");
  }
}
class Mobilephone extends Electronics{
  void playGames(){
    print("play Games on Mobile phone");
  }
  void callContact(){
    print("Calling through mobile phone");
  }
}

 //super keyword in dart
void main(){
  Mobilephone mobilephone = Mobilephone("s23", "samsung");
}

class Electronics{//super class
  Electronics(String brand){//constructor
    print("This is a Electronics Constructor - $brand");
  }
  double height =56;
  double width = 56;
  double thickness = 56;
}
class Mobilephone extends Electronics{//sub class
  Mobilephone(String model, String brand): super(brand){
    print("This is a Mobilephone Constructor - $model");
  }
}


//method of overriding
void main(){
  Mobilephone mobilephone = Mobilephone();
  mobilephone.watch();
}
class Electronics{
  //parent class
  double height=34;
  double width=67;
  double thickness=78;
  void watch(){
    print("Electronics item is being watched");
  }
}

class Mobilephone extends Electronics{
  //child class
  void playGames(){//function
    print("playing games on mobile phone");
  }

  void watch(){
    print("Mobile phone is being watched");
    super.watch();

  }
}//here i have overriden the parent class function


//difference b/w extends and implements

void main(){
  Cow cow = Cow();

}
//parent class
class Animal{
  void walking(){
    print ('Walking');
  }
  void eating(){
    print('Eating');
  }
}
class Mamal{
  void reproduction(){}
}
//child class
class Cow implements Animal,Mamal{
  void walking(){
    print('Walking cow');
  }
  void eating(){
    print('eating cow');
}
  void reproduction(){}
}
//1.you have to override methods,no choice
//2. you can have multiple parents in case of implements


//function in dart
void greet() {
  print("Hello Flutter!");
}
void main() {
  greet(); // function call
}

// difference of 2 (160 bits) hexadecimal
void main() {
  // 2 bade hexadecimal numbers
  var a = BigInt.parse("A1B2C3D4E5F60718293A4B5C6D7E8F9012345678", radix: 16);
  var b = BigInt.parse("00112233445566778899AABBCCDDEEFF00112233", radix: 16);

  // Difference (always positive)
  var diff = (a - b).abs();

  print("Decimal difference: $diff");
  print("Hexadecimal difference: ${diff.toRadixString(16)}");
}



//Synchronization in Dart
// Synchronization means executing tasks in a specific order.
// Dart is single-threaded but uses async/await for asynchronous operations.

Future<void> main() async {
  print("Task 1");
  await Future.delayed(Duration(seconds: 1));
  print("Task 2 (after delay)");
}



//function call
//A function call means invoking the function to execute its code.
void add(int a, int b) {
  print(a + b);
}

void main() {
  add(5, 3); // function call
}



//Peer-to-Peer (P2P)

//P2P means direct communication between two devices without a central server.

//Example: File sharing apps like BitTorrent or ShareIt use P2P.

//Pros: Fast, no central server.



//synchronisation code
void main() async {
  print("Line 1");
  await display();
  print("Line 3");
}

Future<void> display() async {
  Future.delayed(Duration(seconds: 5), () => print("Line 2"));
}



//function in dart
add(int a, int b) {
  int result;
  result = a + b;
  return result;
}

void main() {
  print(add(10, 3));
}


//shorthand syntax
void main() {
  print(add(10, 20));
}

int add(int a, int b) => a + b;



//required parameter
void main() {
  student('khushi', 22);
}

void student(String name, int age) {
  print(name);
  print(age);
}



//named parameter
void main() {
  student('khushi', 21, 32);
}

void student(String name, int age, int roll) {
  print(name);
  print(age);
  print(roll);
}



//instance variables & instance method
void main() {
  var obj = student();
  obj.display();
}

class student {
  var name = 'khushi'; //instance varaibles
  var age = 21;

  void display() {
    //instance method(class mai koi function define krna)
    print('Name = $name');
    print('Age = $age');
  }
}


//super keyword
void main() {
  var obj = B();
  obj.display();
}

class A {
  var x = 10;

  void display() {
    print('super class');
  }
}

class B extends A {
  var x = 20;

  void display() {
    print(super.x); //super keyword
    super.display(); //super keyword
  }
}



//this keyword
void main() {
  var obj = A();
  obj.display(100, 200);
}

class A {
  int x = 10;
  int y = 20;

  void display(int x, int y) {
    print('x=${this.x} \n y=${this.y}'); //this keyword
  }
}
//constant contructor

void main() {
  var obj1 = const Display(10, 20);
  var obj2 = const Display(10, 20);
  print(obj1 == obj2);
}

class Display {
  final int x;
  final int y;

  const Display(this.x, this.y);
}





import 'dart:convert';
import 'dart:io';

void main() async {
  // Step 1: Make a Map (data in Dart)
  var data = {"name": "Alice", "age": 22};

  // Step 2: Convert Map → JSON string
  String jsonText = jsonEncode(data);

  // Step 3: Save it into a file
  final file = File('data.json');
  await file.writeAsString(jsonText);

  print("File saved!");
}




import 'dart:convert'; // for jsonDecode
import 'dart:io'; // for File

void main() async {
  try {
    // Step 1: Open file
    final file = File('data.json');

    // Step 2: Read as String
    String contents = await file.readAsString();

    // Step 3: Decode JSON -> Map
    var data = jsonDecode(contents);

    // Step 4: Use values
    print("Name: ${data["name"]}");
    print("Age: ${data["age"]}");
    print("Skills: ${data["skills"]}");
    print("First Skill: ${data["skills"][0]}");
  } catch (e) {
    print("Error: $e");
  }
}

 */

import 'dart:convert';
import 'dart:io';

void main() async {
  // ---------- WRITE ----------
  var data = {
    "name": "Alice",
    "age": 22,
    "skills": ["Dart", "Flutter"],
  };

  String jsonText = jsonEncode(data); // Map → JSON
  final file = File('data.json');
  await file.writeAsString(jsonText);
  print("Data written!");

  // ---------- READ ----------
  String contents = await file.readAsString(); // File → String
  var readData = jsonDecode(contents); // String → Map
  print("Data read!");

  // Output
  print("Name: ${readData["name"]}");
  print("Age: ${readData["age"]}");
  print("Skills: ${readData["skills"]}");
}
