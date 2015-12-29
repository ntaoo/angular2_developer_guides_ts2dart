library todo_app.todo_form;

import "package:angular2/angular2.dart";
import "package:todo_app/todo.dart";

@Component(
    selector: 'todo-form',
    template: r'''
    <form (ngSubmit)="addTodo()">
      <input type="text" [(ngModel)]="task" size="30"
             placeholder="add new todo here">
      <input class="btn-primary" type="submit" value="add">
    </form>''',
    // This shouldn't be necessary soon.
    directives: const [CORE_DIRECTIVES, FORM_DIRECTIVES])
class TodoForm {
  @Output() EventEmitter<Todo> newTask = new EventEmitter<Todo>();
  String task = '';
  void addTodo() {
    if (this.task.isNotEmpty) this.newTask.add(new Todo(this.task, false));
    this.task = '';
  }
}
