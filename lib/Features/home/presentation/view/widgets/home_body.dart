import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geminiapp/Features/home/presentation/view/widgets/custom_text_field.dart';
import 'package:geminiapp/Features/home/presentation/view/widgets/message_list_view.dart';
import 'package:geminiapp/Features/home/presentation/view_model/cubit/chat_cubit.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 0.h, horizontal: 16.w),
        child: Column(
          children: [
            Expanded(
              child: BlocBuilder<ChatCubit, ChatState>(
                builder: (context, state) {
                  if (state is MessageSent) {
                    return ListViewOfMessages(
                      messages: state.messages,
                    );
                  }
                  return const Center(child: Text('No messages yet !'));
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.h, bottom: 20.h),
              child: const CustomTextField(),
            ),
          ],
        ),
      ),
    );
  }
}
