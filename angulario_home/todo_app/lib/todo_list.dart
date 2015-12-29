library todo_app.todo_list;

import "package:angular2/angular2.dart";
import "package:todo_app/todo.dart";

@Component(
    selector: 'todo-list',
    styles: const [
      r'''
    .done-true {
      text-decoration: line-through;
      color: grey;
    }'''
    ],
    template: r'''
    <ul class="unstyled">
      <li *ngFor="var todo of todos">
        <input type="checkbox" [(ngModel)]="todo.done">
        <span [ngClass]="doneClass(todo.done)">{{todo.text}}</span>
      </li>
    </ul>''',
    // This shouldn't be necessary soon.
    directives: const [CORE_DIRECTIVES, FORM_DIRECTIVES])
class TodoList {
  @Input() List<Todo> todos;
  // Looks like class="done-{{todo.done}}" in angular.io sample doesn't work for some reason. This is a workaround.
  String doneClass(bool done) => "done-$done";
}
