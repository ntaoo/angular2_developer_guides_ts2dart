library todo_app.todo_app;

import "package:angular2/angular2.dart";
import "package:todo_app/todo.dart";
import "package:todo_app/todo_form.dart";
import "package:todo_app/todo_list.dart";

@Component(
    selector: 'todo',
    template: r'''
    <h2>Todo</h2>
    <span>{{remaining}} of {{todos.length}} remaining</span>
    [ <a href="javascript: false" (click)="archive()">archive</a> ]
    <todo-list [todos]="todos"></todo-list>
    <todo-form (newTask)="addTask($event)"></todo-form>''',
    directives: const [TodoList, TodoForm])
class TodoApp {
  List<Todo> todos = [
    new Todo('learn angular', true),
    new Todo('build an angular app', false),
  ];
  int get remaining => this
      .todos
      .fold(0, (int count, Todo todo) => !todo.done ? count + 1 : count);

  void archive() {
    var oldTodos = this.todos;
    this.todos = [];
    oldTodos.forEach((Todo todo) {
      if (!todo.done) this.todos.add(todo);
    });
  }

  void addTask(Todo task) {
    this.todos.add(task);
  }
}
