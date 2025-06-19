import 'package:feaa/core/domain/utils/constants/app_colors.dart';
import 'package:feaa/core/domain/utils/constants/app_text_styles.dart';
import 'package:feaa/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:feaa/features/auth/presentation/widgets/auth_clipper.dart';
import 'package:feaa/router/route_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _formKey = GlobalKey<FormState>();

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final studentIdController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state.status == AuthStatus.success) {
          context.go(RoutePath.home.path);
        }
      },
      child: Scaffold(
        backgroundColor: AppColors.primary,
        body: SafeArea(
          child: BlocBuilder<AuthBloc, AuthState>(
            builder: (context, state) {
              if (state.status == AuthStatus.loading) {
                return const Center(
                    child: CircularProgressIndicator(color: Colors.white));
              }

              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 16.0, left: 16.0, right: 16.0),
                    child: Row(
                      children: [
                        const BackButton(
                          color: AppColors.primary,
                          style: ButtonStyle(
                              backgroundColor:
                                  WidgetStatePropertyAll(AppColors.white)),
                        ),
                        const SizedBox(width: 16),
                        Text("Creazǎ cont",
                            style: AppTextStyles.title2
                                .copyWith(color: AppColors.white))
                      ],
                    ),
                  ),
                  Flexible(
                    child: Stack(
                      children: [
                        ClipPath(
                          clipper: AuthClipper(),
                          child: Container(
                            color: Colors.white,
                            height: MediaQuery.of(context).size.height,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              child: SingleChildScrollView(
                                child: Form(
                                  key: _formKey,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const SizedBox(height: 80),

                                      // NUME
                                      const Text('Nume',
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 16)),
                                      TextFormField(
                                        controller: nameController,
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'Introdu numele tău.';
                                          }
                                          return null;
                                        },
                                        decoration: const InputDecoration(
                                          hintText: 'Introdu numele tău',
                                          enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.grey)),
                                          focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.blue)),
                                        ),
                                      ),
                                      const SizedBox(height: 20),

                                      // EMAIL
                                      const Text('Email',
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 16)),
                                      TextFormField(
                                        controller: emailController,
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'Introdu adresa de email.';
                                          }
                                          final emailRegex =
                                              RegExp(r'^[^@]+@[^@]+\.[^@]+');
                                          if (!emailRegex.hasMatch(value)) {
                                            return 'Email invalid.';
                                          }
                                          return null;
                                        },
                                        decoration: const InputDecoration(
                                          hintText: 'Introdu adresa de email',
                                          enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.grey)),
                                          focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.blue)),
                                        ),
                                      ),
                                      const SizedBox(height: 20),

                                      // TELEFON
                                      const Text('Număr Telefon',
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 16)),
                                      TextFormField(
                                        controller: phoneController,
                                        keyboardType: TextInputType.phone,
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'Introdu numărul de telefon.';
                                          }
                                          if (value.length < 10) {
                                            return 'Număr de telefon invalid.';
                                          }
                                          return null;
                                        },
                                        decoration: const InputDecoration(
                                          hintText:
                                              'Introdu numărul de telefon',
                                          enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.grey)),
                                          focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.blue)),
                                        ),
                                      ),
                                      const SizedBox(height: 20),

                                      // ID STUDENT
                                      const Text('ID Student',
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 16)),
                                      TextFormField(
                                        controller: studentIdController,
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'Introdu ID-ul de student.';
                                          }
                                          return null;
                                        },
                                        decoration: const InputDecoration(
                                          hintText: 'Introdu ID-ul de student',
                                          enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.grey)),
                                          focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.blue)),
                                        ),
                                      ),
                                      const SizedBox(height: 20),

                                      // PAROLĂ
                                      const Text('Parolă',
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 16)),
                                      TextFormField(
                                        controller: passwordController,
                                        obscureText: true,
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'Introdu parola.';
                                          }
                                          if (value.length < 6) {
                                            return 'Parola trebuie să conțină minim 6 caractere.';
                                          }
                                          return null;
                                        },
                                        decoration: const InputDecoration(
                                          hintText: 'Introdu parola',
                                          enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.grey)),
                                          focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.blue)),
                                        ),
                                      ),
                                      const SizedBox(height: 20),

                                      // CONFIRMARE PAROLĂ
                                      const Text('Confirmare Parolă',
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 16)),
                                      TextFormField(
                                        controller: confirmPasswordController,
                                        obscureText: true,
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'Confirmă parola.';
                                          }
                                          if (value !=
                                              passwordController.text) {
                                            return 'Parolele nu coincid.';
                                          }
                                          return null;
                                        },
                                        decoration: const InputDecoration(
                                          hintText: 'Reintrodu parola',
                                          enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.grey)),
                                          focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.blue)),
                                        ),
                                      ),

                                      const SizedBox(height: 30),
                                      SizedBox(
                                        width: double.infinity,
                                        child: ElevatedButton(
                                          onPressed: () {
                                            if (_formKey.currentState
                                                    ?.validate() ??
                                                false) {
                                              context.read<AuthBloc>().add(
                                                    AuthEvent
                                                        .registerButtonPressed(
                                                      name: nameController.text
                                                          .trim(),
                                                      email: emailController
                                                          .text
                                                          .trim(),
                                                      phone: phoneController
                                                          .text
                                                          .trim(),
                                                      studentID:
                                                          studentIdController
                                                              .text
                                                              .trim(),
                                                      password:
                                                          passwordController
                                                              .text
                                                              .trim(),
                                                      confirmedPassword:
                                                          confirmPasswordController
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
                                            'Creazǎ cont',
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
                                            context.pop();
                                          },
                                          child: const Text(
                                            "Ai un cont? Autentificǎ-te",
                                            style:
                                                TextStyle(color: Colors.grey),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 24),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
