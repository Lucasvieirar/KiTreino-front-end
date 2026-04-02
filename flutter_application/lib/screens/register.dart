import 'package:flutter/material.dart';
import 'package:flutter_application/widgets/InputCustom.dart';
import 'package:flutter_application/widgets/buttonCustom.dart';
import 'package:flutter_application/animation/animationFade.dart';
import 'package:flutter_application/widgets/subTittleCustom.dart';
import 'package:flutter_application/widgets/titleCustom.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF050B10),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
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
                  child: const TitleCustom(title: "Crie sua conta"),
                ),

                const SizedBox(height: 8),

                StaggeredFade(
                  index: 2,
                  child: const  SubTitleCustom(subTitle: "Comece sua jornada fitness agora"),
                ),

                const SizedBox(height: 32),

                StaggeredFade(
                  index: 3,
                  child: InputCustom(
                    hint: "Nome",
                    prefixIcon: const Icon(Icons.person, color: Colors.white54),
                  ),
                ),

                const SizedBox(height: 16),

                StaggeredFade(
                  index: 4,
                  child: InputCustom(
                    hint: "Email",
                    keyboardType: TextInputType.emailAddress,
                    prefixIcon: const Icon(Icons.email, color: Colors.white54),
                  ),
                ),

                const SizedBox(height: 16),

                StaggeredFade(
                  index: 5,
                  child: InputCustom(
                    hint: "Senha",
                    isPassword: true,
                    prefixIcon: const Icon(Icons.lock, color: Colors.white54),
                  ),
                ),

                const SizedBox(height: 20),

                StaggeredFade(
                  index: 6,
                  child: ButtonCustom(
                    text: "Criar Conta",
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}