import 'package:chatt/core/localization/changelocal.dart';
import 'package:chatt/core/localization/translation.dart';
import 'package:chatt/core/services/services.dart';
import 'package:chatt/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


// late SharedPreferences sharedpref;
void main() async{
    WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}
//ahamd ammar almohmmad such as 
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
     LocaleController controller = Get.put(LocaleController());
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
     translations: MyTranslation(),
      
      title: 'Flutter Demo',
      locale: controller.language,
      theme: controller.appTheme, 
      // routes: routes,
      getPages: routes,
  
   
    );
  }
}// var x=10;


