import '../models/data_layer.dart';
import 'package:flutter/material.dart';
import '../provider/plan_provider.dart';

class PlanScreen extends StatefulWidget {
  final Plan plan;
  const PlanScreen({
    Key? key,
    required this.plan,
  }) : super(key: key);

  @override
  State<PlanScreen> createState() => _PlanScreenState();
}

class _PlanScreenState extends State<PlanScreen> {
  late ScrollController scrollController;
  Plan get plan => widget.plan;

  get text => null;
  set plan(Plan plan) {
    setState(() {
      this.plan = plan;
    });
  }

  @override
  void initState() {
    super.initState();
    scrollController = ScrollController()
      ..addListener(() {
        FocusScope.of(context).requestFocus(FocusNode());
      });
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ValueNotifier<List<Plan>> plansNotifier = PlanProvider.of(context);

    return Scaffold(
      appBar: AppBar(title: Text(plan.name)),
      body: ValueListenableBuilder<List<Plan>>(
        valueListenable: plansNotifier,
        builder: (context, plans, child) {
          Plan currentPlan = plans.firstWhere((p) => p.name == plan.name);
          return Column(
            children: [
              Expanded(child: _buildList(currentPlan)),
              SafeArea(child: Text(currentPlan.completenessMessage)),
            ],
          );
        },
      ),
      floatingActionButton: _buildAddTaskButton(
        context,
      ),
    );
  }

  Widget _buildAddTaskButton(BuildContext context) {
    ValueNotifier<List<Plan>> planNotifier = PlanProvider.of(context);
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () {
        Plan currentPlan = plan;
        int planIndex =
            planNotifier.value.indexWhere((p) => p.name == currentPlan.name);
        List<Task> updatedTasks = List<Task>.from(currentPlan.tasks)
          ..add(const Task());
        planNotifier.value = List<Plan>.from(planNotifier.value)
          ..[planIndex] = Plan(
            name: currentPlan.name,
            tasks: updatedTasks,
          );
        plan = Plan(
          name: currentPlan.name,
          tasks: updatedTasks,
        );
      },
    );
  }

  Widget _buildList(Plan plan) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            controller: scrollController,
            itemCount: plan.tasks.length,
            itemBuilder: (context, index) =>
                _buildTaskTile(plan.tasks[index], index, context),
          ),
        ),
        // Tambahkan progress footer di sini
      ],
    );
  }

  Widget _buildTaskTile(Task task, int index, BuildContext context) {
    ValueNotifier<List<Plan>> planNotifier = PlanProvider.of(context);

    return ListTile(
      leading: Checkbox(
          value: task.complete,
          onChanged: (selected) {
            Plan currentPlan = plan;
            int planIndex = planNotifier.value
                .indexWhere((p) => p.name == currentPlan.name);

            if (!currentPlan.tasks.isEmpty) {
              planNotifier.value = List<Plan>.from(planNotifier.value)
                ..[planIndex] = Plan(
                  name: currentPlan.name,
                  tasks: List<Task>.from(currentPlan.tasks)
                    ..[index] = Task(
                      description: text,
                      complete: selected ?? false,
                    ) as Task,
                );
            } else {
              // The tasks list is empty, so do something else.
            }
          }),
      title: TextFormField(
          initialValue: task.description,
          onChanged: (text) {
            Plan currentPlan = plan;
            int planIndex = planNotifier.value
                .indexWhere((p) => p.name == currentPlan.name);

            if (!currentPlan.tasks.isEmpty) {
              planNotifier.value = List<Plan>.from(planNotifier.value)
                ..[planIndex] = Plan(
                  name: currentPlan.name,
                  tasks: List<Task>.from(currentPlan.tasks)
                    ..[index] = Task(
                      description: text,
                      complete: task.complete,
                    ) as Task,
                );
            }
          }),
    );
  }
}
