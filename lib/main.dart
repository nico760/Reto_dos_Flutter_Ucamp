import 'package:flutter/material.dart';
import 'package:reto_dos/pages/bodypage.dart';
import 'package:reto_dos/pages/home_page.dart';
import 'package:reto_dos/pages/profile_page.dart';


void main() {
  runApp(const MyInfoApp());
}

class MyInfoApp extends StatefulWidget {
  const MyInfoApp({super.key});

  @override
  State<MyInfoApp> createState() => _MyInfoAppState();
}

class _MyInfoAppState extends State<MyInfoApp>  with WidgetsBindingObserver{
  bool _isDark = false; 

      @override
  void initState() {
    //Esta funcion se ejecuta antes de crear el widget.
    WidgetsBinding.instance.addObserver(this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyInfoApp',
      theme: ThemeData(
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      themeMode: _getThemeMode(), // con el system hago referencia al tema actual de mi dispositivo
      debugShowCheckedModeBanner: false,
      home: HomePage(
        const [BodyPage(),ProfilePage()],
        _isDark,
        _onSwitchChanged
      )
    );
  }
  void _onSwitchChanged(bool currentValue){
    setState(() {
      _isDark = currentValue;
    });
  }

  ThemeMode _getThemeMode (){
    if(_isDark){
      return ThemeMode.dark;
    } else{
      return ThemeMode.light;
    }
  }
}
