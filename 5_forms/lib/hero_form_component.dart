library angular2_developer_guides.hero_component;

import "package:angular2/angular2.dart";
import "package:angular2_developer_guides/hero.dart";

const List<String> _powers = const [
  'Really Smart',
  'Super Flexible',
  'Super Hot',
  'Weather Changer'
];
@Component(
    selector: 'hero-form',
    templateUrl: 'hero_form_component.html',
    // Soon specifying directives here will be unnecessary.
    directives: const [CORE_DIRECTIVES, FORM_DIRECTIVES])
class HeroFormComponent {
  List<String> get powers => _powers;
  bool submitted = false;
  Hero model = new Hero(18, 'Dr IQ', _powers[0], 'Chuck Overstreet');
  onSubmit() {
    submitted = true;
  }
}