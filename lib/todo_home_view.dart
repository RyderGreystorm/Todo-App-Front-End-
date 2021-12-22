import 'package:flutter/material.dart';
import 'package:todo_app/models/todonetwork.dart';

class TodoHomeView extends StatefulWidget {
  const TodoHomeView({Key? key}) : super(key: key);

  @override
  State<TodoHomeView> createState() => _TodoHomeViewState();
}

class _TodoHomeViewState extends State<TodoHomeView> {
  Future? getData;
  TodoNetwrok netwrok = TodoNetwrok();
  @override
  void initState() {
    getData = netwrok.getAllTodos();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).textTheme.headline2!.backgroundColor,
        title: Text("My tasks"),
        leading: CircleAvatar(),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.filter_list_sharp),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
        ],
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.check_circle_outline),
          ),
          title: Text("Plan the trip to Finland"),
          contentPadding: EdgeInsets.symmetric(vertical: 12),
          trailing: TextButton.icon(
            onPressed: () {},
            icon: Icon(Icons.notifications_none_outlined),
            label: Text("Yesterday"),
          ),
        ),
        separatorBuilder: (context, index) => SizedBox(
          height: 5,
        ),
        itemCount: 10,
      ),
    );
  }
}
