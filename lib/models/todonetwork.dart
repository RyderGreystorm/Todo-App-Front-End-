import 'package:http/http.dart';
import 'package:todo_app/models/todomodel.dart';

class TodoNetwrok {
  String getDataUrl = "https://plum-creepy-crow.cyclic.app/getAllTodos";
  //Get all Todos
  Future getAllTodos() async {
    Response response = await get(Uri.parse(getDataUrl));

    if (response.statusCode == 200) {
      print(response.body);
      return todoModelFromJson;
    } else {
      throw {Exception("Failed to get data from database")};
    }
  }
  //Post/Create a new todo

  //Update a todo by ID

  //Delete a todo by ID
}
