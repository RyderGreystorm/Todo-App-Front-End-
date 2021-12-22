// To parse this JSON data, do
//
//     final todoModel = todoModelFromJson(jsonString);

import 'dart:convert';

TodoModel todoModelFromJson(String str) => TodoModel.fromJson(json.decode(str));

String todoModelToJson(TodoModel data) => json.encode(data.toJson());

class TodoModel {
    TodoModel({
        this.message,
        this.model,
    });

    String? message;
    List<Model> ?model;

    factory TodoModel.fromJson(Map<String, dynamic> json) => TodoModel(
        message: json["message"],
        model: List<Model>.from(json["model"].map((x) => Model.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "message": message,
        "model": List<dynamic>.from(model!.map((x) => x.toJson())),
    };
}

class Model {
    Model({
        this.id,
        this.isCompleted,
        this.date,
        this.v,
        this.title,
        this.description,
    });

    String? id;
    bool? isCompleted;
    DateTime? date;
    int? v;
    String? title;
    String ?description;

    factory Model.fromJson(Map<String, dynamic> json) => Model(
        id: json["_id"],
        isCompleted: json["isCompleted"],
        date: DateTime.parse(json["date"]),
        v: json["__v"],
        title: json["title"] == null ? null : json["title"],
        description: json["description"] == null ? null : json["description"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "isCompleted": isCompleted,
        "date": date!.toIso8601String(),
        "__v": v,
        "title": title == null ? null : title,
        "description": description == null ? null : description,
    };
}
