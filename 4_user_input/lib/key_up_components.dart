library angular2_developer_guides.key_up_components;

import "dart:html";
import "package:angular2/angular2.dart";

@Component(
    selector: 'key-up1',
    template: r'''
    <input (keyup)="onKey($event)">
    <p>{{values}}</p>
  ''')
class KeyUpComponentV1 {
  String values = '';

  void onKey(KeyboardEvent event) {
    this.values += "${(event.target as InputElement).value} | ";
  }
}

@Component(
    selector: 'key-up2',
    template: r'''
    <input #box (keyup)="onKey(box.value)">
    <p>{{values}}</p>
  ''')
class KeyUpComponentV2 {
  String values = '';

  void onKey(String value) {
    this.values += "$value | ";
  }
}

@Component(
    selector: 'key-up3',
    template: r'''
    <input #box (keyup.enter)="values=box.value">
    <p>{{values}}</p>
  ''')
class KeyUpComponentV3 {
  String values = '';
}

@Component(
    selector: 'key-up4',
    template: '''
    <input #box
      (keyup.enter)="values=box.value"
      (blur)="values=box.value">

    <p>{{values}}</p>
  ''')
class KeyUpComponentV4 {
  String values = '';
}
