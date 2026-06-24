import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'core/theme/app_theme.dart';
import 'screens/login/login_screen.dart';
import 'screens/dashboard/dashboard_screen.dart';
import 'screens/accounts/accounts_screen.dart';
import 'screens/security/security_screen.dart';
import 'screens/notifications/notifications_screen.dart';
import 'screens/logs/logs_screen.dart';
import 'screens/settings/settings_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.light,
    systemNavigationBarColor: Color(0xFF0D0D0D),
    systemNavigationBarIconBrightness: Brightness.light,
  ));
  runApp(const EntegralApp());
}

class EntegralApp extends StatelessWidget {
  const EntegralApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ENTEGRAL',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.darkTheme,
      initialRoute: '/login',
      routes: {
        '/login': (context) => const LoginScreen(),
        '/dashboard': (context) => const DashboardScreen(),
        '/accounts': (context) => const AccountsScreen(),
        '/security': (context) => const SecurityScreen(),
        '/notifications': (context) => const NotificationsScreen(),
        '/logs': (context) => const LogsScreen(),
        '/settings': (context) => const SettingsScreen(),
      },
    );
  }
}
