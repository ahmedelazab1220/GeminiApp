import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geminiapp/Features/home/presentation/view_model/cubit/chat_cubit.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<ChatCubit>().formKey,
      child: Row(
        children: [
          SizedBox(
            width: 260.w,
            child: TextFormField(
              controller: context.read<ChatCubit>().textEditingController,
              onChanged: (value) {
                if (context.read<ChatCubit>().messagesList.isEmpty) {
                  context.read<ChatCubit>().changeTypingState(value.isNotEmpty);
                }
              },
              maxLines: null,
              decoration: InputDecoration(
                filled: true,
                fillColor: const Color(0xff3D3D3D),
                hintText: 'Enter a prompt here ...',
                hintStyle: TextStyle(
                  color: Colors.grey[400],
                  fontSize: 14.sp,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.r),
                  borderSide: BorderSide.none,
                ),
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 20.w,
                  vertical: 14.h,
                ),
              ),
              style: const TextStyle(color: Colors.white),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Container(
            height: 50.h,
            width: 45.w,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(25.r),
            ),
            child: IconButton(
              onPressed: () {
                context.read<ChatCubit>().sendMessage();
              },
              icon: Icon(
                Icons.send_sharp,
                size: 24.sp,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
