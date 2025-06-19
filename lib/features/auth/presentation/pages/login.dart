import 'package:feaa/core/domain/utils/constants/app_colors.dart';
import 'package:feaa/core/domain/utils/constants/app_text_styles.dart';
import 'package:feaa/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:feaa/features/auth/presentation/widgets/auth_clipper.dart';
import 'package:feaa/router/route_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

// Design after https://dribbble.com/shots/16073780-Social-App-Login-Signup

class Auth extends StatefulWidget {
  const Auth({super.key});

  @override
  State<Auth> createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  final TextEditingController studentIdController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state.status == AuthStatus.success) {
          context.go(RoutePath.home.path);
        } else if (state.status == AuthStatus.error) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.error ?? 'Eroare la autentificare')),
          );
        }
      },
      child: Scaffold(
        body: SafeArea(
          child: BlocBuilder<AuthBloc, AuthState>(
            builder: (context, state) {
              if (state.status == AuthStatus.loading) {
                return const Center(
                    child: CircularProgressIndicator(color: AppColors.primary));
              }

              return Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Image.asset("assets/images/auth_background.png"),
                  ),
                  Container(color: AppColors.primaryLight.withAlpha(150)),
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        const SizedBox(height: 40),
                        Container(
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          padding: const EdgeInsets.all(24),
                          child: SvgPicture.asset(
                            'assets/images/logo.svg',
                            colorFilter: const ColorFilter.mode(
                              AppColors.primary,
                              BlendMode.srcIn,
                            ),
                            width: 40,
                          ),
                        ),
                        Text(
                          "Bine ai venit!",
                          style: AppTextStyles.title1
                              .copyWith(color: AppColors.white),
                        ),
                        const SizedBox(height: 64),
                        ClipPath(
                          clipper: AuthClipper(),
                          child: Container(
                            color: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Form(
                                key: _formKey,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(height: 64),

                                    // ID Student
                                    const Text('ID Student',
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 16)),
                                    TextFormField(
                                      controller: studentIdController,
                                      decoration: const InputDecoration(
                                        hintText: 'Introdu ID-ul de student',
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.grey),
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.blue),
                                        ),
                                      ),
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Te rugăm să introduci ID-ul de student';
                                        }
                                        return null;
                                      },
                                    ),
                                    const SizedBox(height: 20),

                                    // Parolă
                                    const Text('Parolă',
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 16)),
                                    TextFormField(
                                      controller: passwordController,
                                      obscureText: true,
                                      decoration: const InputDecoration(
                                        hintText: 'Introdu parola',
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.grey),
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.blue),
                                        ),
                                      ),
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Te rugăm să introduci parola';
                                        }
                                        return null;
                                      },
                                    ),
                                    const SizedBox(height: 10),

                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Checkbox(
                                              value: rememberMe,
                                              onChanged: (val) {
                                                setState(() =>
                                                    rememberMe = val ?? false);
                                              },
                                            ),
                                            const Text(
                                                'Vreau sǎ rǎmân conectat'),
                                          ],
                                        ),
                                        TextButton(
                                          onPressed: () {},
                                          child: const Text('Ai uitat parola?'),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 20),

                                    SizedBox(
                                      width: double.infinity,
                                      child: ElevatedButton(
                                        onPressed: () {
                                          if (_formKey.currentState!
                                              .validate()) {
                                            context.read<AuthBloc>().add(
                                                  LoginButtonPressed(
                                                    studentID:
                                                        studentIdController.text
                                                            .trim(),
                                                    password: passwordController
                                                        .text
                                                        .trim(),
                                                  ),
                                                );
                                          }
                                        },
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: AppColors.primary,
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 15),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                        ),
                                        child: const Text(
                                          'Autentificǎ-te',
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.white),
                                        ),
                                      ),
                                    ),

                                    const SizedBox(height: 20),
                                    Align(
                                      alignment: Alignment.center,
                                      child: TextButton(
                                        onPressed: () {
                                          context.push(RoutePath.register.path);
                                        },
                                        child: const Text(
                                          "Nu ai un cont? Înregistreazǎ-te",
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
