library angular2_developer_guides.click_me2_component;

import "package:angular2/angular2.dart";

// Using r''' ''' instead of ''' ''' to avoid parsing `$event`.
@Component(
    selector: 'click-me2',
    template: r'''
    <button (click)="onClickMe2($event)">No! .. Click me!</button>
    {{clickMessage}}''')
class ClickMeComponent2 {
  String clickMessage = '';
  int clicks = 1;

  void onClickMe2(dynamic event) {
    var eventMessage =
        event != null ? ' Event target is ${event.target.tagName}' : '';
    this.clickMessage = "Click ${this.clicks++}. $eventMessage";
  }
}
