import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geminiapp/Features/home/presentation/view/widgets/home_body.dart';
import 'package:geminiapp/Features/home/presentation/view_model/cubit/chat_cubit.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const routeName = '/home_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.delete),
            onPressed: () {
              context.read<ChatCubit>().clearMessages();
            },
          ),
        ],
      ),
      body: const HomeBody(),
    );
  }
}
