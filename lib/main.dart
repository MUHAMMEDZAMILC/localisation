import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(EasyLocalization(
    // ignore: prefer_const_literals_to_create_immutables
    supportedLocales: [ Locale('en'), Locale('hi'), Locale('ml'),Locale('ar')],
    path: 'assets/translation',
    fallbackLocale: const Locale('en','IN'),
    saveLocale: true,
    child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates:context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
   var langcode=['en','ml','hi','ar'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        actions: [
          PopupMenuButton(itemBuilder:(context)=>[
             PopupMenuItem( 
                  value: 1, 
                  // row has two child icon and text.
                  child: const Row( 
                    children: [
                     
                      Text("English")
                    ],
                  ),
                  onTap: (){
                    setState(() {
                     EasyLocalization.of(context)!.setLocale(Locale(langcode[0]));
                    });
                  },
                ),
                // popupmenu item 2
                 PopupMenuItem(
                  value: 2,
                  // row has two child icon and text
                  child: const Row(
                    children: [
                      
                      Text("Malayalam")
                    ],
                  ),
                  onTap: (){
                    setState(() {
                     EasyLocalization.of(context)!.setLocale(Locale(langcode[1]));
                    });
                  },
                ),
                // popupmenu item 3
                PopupMenuItem(
                  value: 3,
                  // row has two child icon and text
                  child: const Row(
                    children: [
                      
                      Text("Hindi")
                    ],
                  ),
                  onTap: (){
                    setState(() {
                     EasyLocalization.of(context)!.setLocale(Locale(langcode[2]));
                    });
                  },
                ),
                // popupmenu item 4
                PopupMenuItem(
                  value: 4,
                  // row has two child icon and text
                  child: const Row(
                    children: [
                      
                      Text("Arabic")
                    ],
                  ),
                  onTap: (){
                    setState(() {
                     EasyLocalization.of(context)!.setLocale(Locale(langcode[3]));
                    });
                  },
                ),
                
          ] ,)
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text('hello'.tr().toString(),),
              Text('contacts'.tr().toString(),),
              Text('messages'.tr().toString(),),
              Text('daysleft'.tr().toString(),),
              Text('searchprofile'.tr().toString(),),
              
             
            ],
          ),
        ),
      ),
    );
  }
}
