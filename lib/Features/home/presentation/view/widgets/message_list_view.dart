import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geminiapp/Features/home/data/models/message_model.dart';
import 'package:geminiapp/Features/home/presentation/view_model/cubit/chat_cubit.dart';
import 'message_widget.dart';

class ListViewOfMessages extends StatelessWidget {
  final List<MessageModel> messages;

  const ListViewOfMessages({super.key, required this.messages});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      controller: context.read<ChatCubit>().scrollController,
      itemCount: messages.length,
      itemBuilder: (context, index) {
        final message = messages[index];
        final isUserMessage = message.sender == "user";
        return MessageWidget(
          message: message.message,
          isFromUser: isUserMessage,
        );
      },
    );
  }
}
