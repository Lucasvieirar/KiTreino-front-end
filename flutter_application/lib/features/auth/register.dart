import 'package:flutter/material.dart';
import 'package:flutter_application/features/homePage.dart';
import '../../core/theme/theme.dart';
import '../../shared/widgets/widgets.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AuthShell(
      title: 'Crie sua conta',
      subtitle: 'Comece sua jornada fitness agora',
      fields: [
        AppInput(
          controller: _nameController,
          hint: 'Nome',
          textInputAction: TextInputAction.next,
          prefixIcon: const Icon(Icons.person, color: AppColors.iconDefault),
        ),
        AppInput(
          controller: _emailController,
          hint: 'Email',
          keyboardType: TextInputType.emailAddress,
          textInputAction: TextInputAction.next,
          prefixIcon: const Icon(Icons.email, color: AppColors.iconDefault),
        ),
        AppInput(
          controller: _passwordController,
          hint: 'Senha',
          isPassword: true,
          textInputAction: TextInputAction.done,
          prefixIcon: const Icon(Icons.lock, color: AppColors.iconDefault),
        ),
          Align(
          alignment: Alignment.centerRight,
          child: TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              padding: EdgeInsets.zero,
              minimumSize: Size.zero,
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),
            child: const Text('Já tem conta?', style: AppTypography.linkText),
          ),
        ),
        AppButton(text: 'Criar Conta', onPressed: _handleRegister),

      
      ],
      
    );
    
  }

  void _handleRegister() {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const HomePage()),
    );
  }
}