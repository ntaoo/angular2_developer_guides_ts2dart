library angular2_developer_guides.loop_back_component;

import "package:angular2/angular2.dart";

@Component(
    selector: 'loop-back',
    template: '''
    <input #box (keyup)="0">
    <p>{{box.value}}</p>
  ''')
class LoopBackComponent {}
