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
              Text('editprofile'.tr().toString(),),
              Text('notification'.tr().toString(),),
              Text('accountsettings'.tr().toString(),),
              Text('helpsupport'.tr().toString(),),
              Text('feedback'.tr().toString(),),
              Text('abouthn'.tr().toString(),),
              Text('upgradetoprem'.tr().toString(),),
              Text('vievarifyprof'.tr().toString(),),
              Text('sendpersonalisedmesg'.tr().toString(),),
              Text('viewverifiedpcontact'.tr().toString(),),
              Text('premium'.tr().toString(),),
              Text('assisted'.tr().toString(),),
              Text('interests'.tr().toString(),),
              Text('profilevisit'.tr().toString(),),
              Text('shortlist'.tr().toString(),),
              Text('blocked'.tr().toString(),),
              Text('ignorelist'.tr().toString(),),
              Text('photorequest'.tr().toString(),),
              Text('getuprade'.tr().toString(),),
              Text('editmyprof'.tr().toString(),),
              Text('diabilityprof'.tr().toString(),),
              Text('orphanproif'.tr().toString(),),
              Text('advancedsearch'.tr().toString(),),
              Text('idselect'.tr().toString(),),
              Text('age'.tr().toString(),),
              Text('maritalstatus'.tr().toString(),),
              Text('select'.tr().toString(),),
              Text('highestedu'.tr().toString(),),
              Text('country'.tr().toString(),),
              Text('state'.tr().toString(),),
              Text('district'.tr().toString(),),
              Text('city'.tr().toString(),),
              Text('height'.tr().toString(),),
              Text('weight'.tr().toString(),),
              Text('bodytype'.tr().toString(),),
              Text('skincolor'.tr().toString(),),
              Text('belief'.tr().toString(),),
              Text('physicalstatus'.tr().toString(),),
              Text('workstatus'.tr().toString(),),
              Text('sortby'.tr().toString(),),
              Text('showonly'.tr().toString(),),
              Text('search'.tr().toString(),),
              Text('searchbyid'.tr().toString(),),
              Text('chooseypurhappiness'.tr().toString(),),
              Text('enterprofileid'.tr().toString(),),
              Text('photovisibilty'.tr().toString(),),
              Text('visibilytoall'.tr().toString(),),
              Text('rotectedwithpass'.tr().toString(),),
              Text('about'.tr().toString(),),
              Text('basicinformation'.tr().toString(),),
              Text('religiousinfo'.tr().toString(),),
              Text('eduandproff'.tr().toString(),),
              Text('physicalattribute'.tr().toString(),),
              Text('locationandcontact'.tr().toString(),),
              Text('familydetails'.tr().toString(),),
              Text('hobbies'.tr().toString(),),
              Text('partnerpref'.tr().toString(),),
              Text('basicpref'.tr().toString(),),
              Text('eduandprofinfo'.tr().toString(),),
              Text('locationpref'.tr().toString(),),
              Text('notificationalert'.tr().toString(),),
              Text('emailalert'.tr().toString(),),
              Text('smsalert'.tr().toString(),),
              Text('profilehideunhide'.tr().toString(),),
              Text('hide'.tr().toString(),),
              Text('unhide'.tr().toString(),),
              Text('entercurrpass'.tr().toString(),),
              Text('enternewpass'.tr().toString(),),
              Text('enterconfirmpass'.tr().toString(),),
              Text('changepass'.tr().toString(),),
              Text('needhelptomakepaymet'.tr().toString(),),
              Text('voicesupport'.tr().toString(),),
              Text('whatsappsupport'.tr().toString(),),
              Text('callnow'.tr().toString(),),
              Text('message'.tr().toString(),),
              Text('subscribe'.tr().toString(),),
              Text('onlinepayment'.tr().toString(),),
              Text('depositbankacc'.tr().toString(),),
              Text('doorstep'.tr().toString(),),
              Text('payentmethod'.tr().toString(),),
              Text('cancel'.tr().toString(),),
              Text('new'.tr().toString(),),
              Text('verified'.tr().toString(),),
              Text('interest'.tr().toString(),),
              Text('interested'.tr().toString(),),
              Text('report'.tr().toString(),),
              Text('reportprofile'.tr().toString(),),
              Text('reason'.tr().toString(),),
              Text('offline'.tr().toString(),),
              Text('howcanwehelpyou'.tr().toString(),),
              Text('like&islike'.tr().toString(),),
              Text('yourprofilematcheswith'.tr().toString(),),
              Text('requestsend'.tr().toString(),),
              Text('requestrecieve'.tr().toString(),),
              Text('send'.tr().toString(),),
              Text('accepted'.tr().toString(),),
              Text('accept'.tr().toString(),),
              Text('ignore'.tr().toString(),),
              Text('mailus'.tr().toString(),),
              Text('helpcenter'.tr().toString(),),
              Text('ifyouneedanyhelp'.tr().toString(),),
             
            ],
          ),
        ),
      ),
    );
  }
}
