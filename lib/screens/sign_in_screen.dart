import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deal_connect/config/custom_colors.dart';

import '../components/custom_text_fild.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: CustomColors.CustomSwatchColor,
      body: SingleChildScrollView(
        child: SizedBox(
          height: size.height,
          width: size.width,
          child: Column(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: /*const*/ [
              
                    //Logo do app
                  const  Text.rich(TextSpan(
                      style: TextStyle(
                        fontSize: 40,
                      ),
                      children: [
                        TextSpan(
                          text: 'Deal',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: 'Connect',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ]
                    )),
              
                    //Categorias
                    SizedBox(
                      height: 30,
                      child: DefaultTextStyle(
                        style: const TextStyle(
                          fontSize: 25
                        ),
                        child: AnimatedTextKit(
                          pause: Duration.zero,
                          repeatForever: true,
                          animatedTexts: [
                          FadeAnimatedText('Menu do RU'),
                          FadeAnimatedText('Alimentos', ),
                          FadeAnimatedText('Bebidas'),
                          FadeAnimatedText('Produtos orgânicos'),
                          FadeAnimatedText('Artesanato e Acessórios'),
                          FadeAnimatedText('Produtos de bem-Estar'),
                          FadeAnimatedText('Produtos de tecnologia'),
                          FadeAnimatedText('Entre outros produtos'),
                          
                      
                        ]),
                      ),
                    ),
              
                  ],
                ),
              ),
              
              //Formulário de login
              Container(
                //Container do meio (branco)
                padding: const EdgeInsets.symmetric(
                  horizontal: 32,
                  vertical: 40,
                ),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(45),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    //Email
                    const CustomTextFild(
                      icon: Icons.email,
                      label: 'Email',
                    ),
              
                    //Senha
                    const CustomTextFild(
                      icon: Icons.lock,
                      label: 'Senha',
                      isSecret: true,
                    ),
              
                    //Botão Entrar
                    SizedBox(
                      height: 50,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: CustomColors.CustomSwatchColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Entrar',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                    ),
              
                    //Esqueci a senha
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Esqueceu a senha?',
                          style: TextStyle(color: Colors.black54),
                        ),
                      ),
                    ), //Esqueci a senha
              
                    // Divisor
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Row(
                        children: [
                          Expanded(
                            child: Divider(
                              color: Colors.grey.withAlpha(90),
                              thickness: 2,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            child: Text('Ou'),
                          ),
                          Expanded(
                            child: Divider(
                              color: Colors.grey.withAlpha(90),
                              thickness: 2,
                            ),
                          ),
                        ],
                      ),
                    ),
              
                    //Botão de novo usuário
                    SizedBox(
                      height: 50,
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                            ),
                            side: const BorderSide(
                                width: 2, color: Color.fromARGB(255, 1, 34, 63))),
                        onPressed: () {},
                        child: const Text(
                          'Criar conta',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
