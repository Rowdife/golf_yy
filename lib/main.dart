import 'package:flutter/material.dart';
import 'package:golf_yy/common/styles/colors.dart';
import 'package:golf_yy/common/view_models/dark_mode_view_model.dart';
import 'package:golf_yy/router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  await Supabase.initialize(
    url: 'https://eyzlxcqkukbqswakdsws.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImV5emx4Y3FrdWticXN3YWtkc3dzIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDY1MjUxODEsImV4cCI6MjA2MjEwMTE4MX0.Yr3gx4EAyk0jgNFtVHrTTkuc5viUd1yi1uAdAMYoYqk',
  );
  runApp(ProviderScope(child: GolfYYApp()));
}

class GolfYYApp extends ConsumerWidget {
  GolfYYApp({super.key});

  final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDarkMode = ref.watch(darkModeProvider);
    return MaterialApp.router(
      routerConfig: _appRouter.config(),
      title: 'GolfYY',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.transparent,
        appBarTheme: AppBarTheme(
          backgroundColor: isDarkMode
              ? AppColors.backgroundOnDarkMode
              : AppColors.backgroundOnLightMode,
          titleTextStyle: TextStyle(
            color: isDarkMode
                ? AppColors.textOnDarkMode
                : AppColors.textOnLightMode,
          ),
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: isDarkMode
              ? AppColors.backgroundOnDarkMode
              : AppColors.backgroundOnLightMode,
        ),
      ),
      builder: (context, child) {
        return Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                AppColors.backgroundGlowStartOnDarkMode,
                AppColors.backgroundGlowEndOnDarkMode,
              ],
            ),
          ),
          child: child!,
        );
      },
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }
