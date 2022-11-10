import 'package:flutter/material.dart';
import 'package:flutter_bloc_code/src/widgets/tasks_list.dart';

import '../blocs/bloc_exports.dart';
import '../models/task.dart';

class PendingTasksScreen extends StatelessWidget {
  const PendingTasksScreen({super.key});
  static const id = 'tasks_screen';

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TasksBloc, TasksState>(
      builder: (context, state) {
        List<Task> tasksList = state.allTasks;

        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Chip(
                label: Text(
                  '${state.allTasks.length} Tasks',
                ),
              ),
            ),
            TaskList(tasksList: tasksList)
          ],
        );
      },
    );
  }
}
