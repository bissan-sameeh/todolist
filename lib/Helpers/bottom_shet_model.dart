import 'package:flutter/material.dart';

import '../Screens/add_task_screen.dart';

mixin showBotttomModel<T extends StatelessWidget> {
  final TextEditingController textController = TextEditingController();

  showModalBottomSheetFun(
    BuildContext context,
  ) {
    showModalBottomSheet(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(14), topLeft: Radius.circular(14))),
      context: context,
      builder: (context) {
        return const Padding(
          padding: EdgeInsets.all(24.0),
          child: AddTaskScreen(),
        );
      },
    );
  }
}
