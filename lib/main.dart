import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geminiapp/Core/utils/routers.dart';
import 'package:geminiapp/Features/home/presentation/view_model/cubit/chat_cubit.dart';
import 'package:geminiapp/Features/splash/presentation/view/splash_screen.dart';

void main() async {
  await ScreenUtil.ensureScreenSize();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.dark,
      systemNavigationBarDividerColor: Colors.grey,
      systemNavigationBarIconBrightness: Brightness.dark,
    ),
  );

  runApp(const GeminiApp());
}

class GeminiApp extends StatelessWidget {
  const GeminiApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(338, 750),
      minTextAdapt: true,
      child: BlocProvider(
        create: (context) => ChatCubit(),
        child: MaterialApp(
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
              brightness: Brightness.dark,
              seedColor: const Color.fromARGB(255, 171, 222, 244),
            ),
            useMaterial3: true,
          ),
          initialRoute: SplashScreen.routeName,
          onGenerateRoute: onGenerateRoute,
          debugShowCheckedModeBanner: false,
        ),
      ),
    );
  }
}
