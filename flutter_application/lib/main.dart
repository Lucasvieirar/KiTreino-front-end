import 'package:flutter/material.dart';
import 'package:flutter_application/widgets/buttonCustom.dart';
import 'widgets/InputCustom.dart';
import 'routes/routes.dart';
import 'animations/StaggeredFade.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.login,
      routes: AppRoutes.routes,

    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF050B10),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child:Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    StaggeredFade(
      index: 0,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: const Icon(
          Icons.fitness_center,
          size: 40,
          color: Color(0xFF00C853),
        ),
      ),
    ),
    const SizedBox(height: 32),

    StaggeredFade(
      index: 1,
      child: const Text(
        "Bem-vindo",
        style: TextStyle(
          color: Colors.white,
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    const SizedBox(height: 8),

    StaggeredFade(
      index: 2,
      child: const Text(
        "Entre na sua conta para continuar",
        style: TextStyle(
          color: Colors.white54,
          fontSize: 14,
        ),
      ),
    ),
    const SizedBox(height: 32),

    StaggeredFade(
      index: 3,
      child: InputCustom(
        hint: "email",
        keyboardType: TextInputType.emailAddress,
        prefixIcon: Icon(Icons.email, color: Colors.white54),
      ),
    ),
    const SizedBox(height: 16),

    StaggeredFade(
      index: 4,
      child: InputCustom(
        hint: "senha",
        isPassword: true,
        prefixIcon: Icon(Icons.lock, color: Colors.white54),
      ),
    ),
    const SizedBox(height: 12),

    StaggeredFade(
      index: 5,
      child: Align(
        alignment: Alignment.centerLeft,
        child: TextButton(
          onPressed: () {},
          child: const Text(
            "Esqueceu a senha?",
            style: TextStyle(
              color: Color(0xFF00C853),
              fontSize: 14,
            ),
          ),
        ),
      ),
    ),
    const SizedBox(height: 12),

    StaggeredFade(
      index: 6,
      child: ButtonCustom(
        text: "Entrar",
        onPressed: () {},
      ),
    ),
    const SizedBox(height: 20),

    StaggeredFade(
      index: 7,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Não tem uma conta? ",
            style: TextStyle(color: Colors.white54),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, AppRoutes.register);
            },
            child: const Text(
              "Cadastre-se",
              style: TextStyle(
                color: Color(0xFF00C853),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    ),
  ],
)
          ),
        ),
      ),
    );
  }

  
  }