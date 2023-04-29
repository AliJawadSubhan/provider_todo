import 'dart:developer';

import 'package:flutter/material.dart';
// import 'package:todoey_flutter/widgets/task_tile.dart';
import 'package:provider/provider.dart';
import 'package:provider_todo/model/tasks.dart';
import 'package:provider_todo/widgets/tasks_tile.dart';
// import 'package:todoey_flutter/models/task_data.dart';

class TasksList extends StatefulWidget {
  const TasksList({
    super.key,
  });

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    // final tasksList = TaskData();
    return Consumer<TasksData>(builder: (context, value, child) {
      return value.getTasksCount == 0
          ? const Center(child: Text('Add A task First!!'))
          : ListView.builder(
              itemCount: value.tasks.length,
              itemBuilder: (context, index) {
                final tasks = value.tasks;
                final taskData = tasks[index];
                return TaskTile(
                  taskTitle: taskData.name,
                  isChecked: taskData.isDone,
                  checkboxCallback: (checkboxState) {
                    taskData.isDone = !taskData.isDone;
                    value.updateTasks(taskData);
                    // log(taskData.isDone.toString());
                  },
                  longPressCallback: () {
                    value.removefromList(taskData);
                  },
                );
              },
            );
    });
  }
}
