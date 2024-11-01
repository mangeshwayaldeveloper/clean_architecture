import 'package:cleanarchitecture/core/secrets/app_secrets.dart';
import 'package:cleanarchitecture/core/theme/theme.dart';
import 'package:cleanarchitecture/features/auth/presentation/pages/login_page.dart';
import 'package:cleanarchitecture/features/auth/presentation/pages/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  final supabase=await Supabase.initialize(url: AppSecrets.supabaseUrl,anonKey:AppSecrets.supabaseAnonKey);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Blog App',
      theme: AppTheme.darkThemeMode,
      home: LoginPage(),
    );
  }
}