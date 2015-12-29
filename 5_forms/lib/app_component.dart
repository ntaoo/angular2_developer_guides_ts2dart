library angular2_developer_guides.app_component;

import "package:angular2/angular2.dart";
import "package:angular2_developer_guides/hero_form_component.dart";

@Component(
    selector: 'my-app',
    template: "<hero-form></hero-form>",
    directives: const [HeroFormComponent]
)
class AppComponent {}
