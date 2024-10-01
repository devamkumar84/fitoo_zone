import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FitooZone',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const DashboardScreen(),
    );
  }
}
class DashboardScreen extends StatefulWidget{
  const DashboardScreen({super.key});
  @override
  State<DashboardScreen> createState() => DashboardScreenState();
}
class DashboardScreenState extends State<DashboardScreen>{
  int counter = 0;
  void increment(){
    setState(() {
      counter++;
    });
  }
  void descrement(){
    if(counter >0){
      setState(() {
        counter--;
      });
    }
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Acharya Prashant'),
        actions: [
          InkWell(
            onTap: (){},
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),
              child: const Icon(Icons.notifications_none),
            ),
          )
        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            onPressed: (){
              increment();
            },
            child: const Icon(Icons.plus_one),
          ),
          const SizedBox(width: 10,),
          FloatingActionButton(
            onPressed: (){
              descrement();
            },
            child: const Icon(Icons.exposure_minus_1),
          ),
        ],
      ),
      body: Center(
        child: Text('Counter Effect: $counter'),
      )
    );
  }
}