library angular2_developer_guides.app_component;

import "package:angular2/angular2.dart";
import "package:angular2_developer_guides/click_me_component.dart";
import "package:angular2_developer_guides/click_me2_component.dart";
import "package:angular2_developer_guides/loop_back_component.dart";
import "package:angular2_developer_guides/key_up_components.dart";
import "package:angular2_developer_guides/little_tour_component.dart";

@Component(
    selector: 'my-app',
    templateUrl: "app_component.html",
    directives: const [
      ClickMeComponent,
      ClickMeComponent2,
      LoopBackComponent,
      KeyUpComponentV1,
      KeyUpComponentV2,
      KeyUpComponentV3,
      KeyUpComponentV4,
      LittleTourComponent
    ])
class AppComponent {}
