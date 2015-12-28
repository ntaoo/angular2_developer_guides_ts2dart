library angular2_developer_guides.click_me_component;

import "package:angular2/angular2.dart";

@Component(
    selector: "click-me",
    template: '''
    <button (click)="onClickMe()">Click me!</button>
    {{clickMessage}}
    ''')
class ClickMeComponent {
  String clickMessage = '';

  void onClickMe() {
    this.clickMessage = 'You are my hero!';
  }
}
