library angular2_developer_guides.app_component;

import "package:angular2/angular2.dart";
import "package:angular2_developer_guides/hero.dart";

// Unlike TypeScript version, you must specify directives list (at least in current version).
// TODO: Prefer to use @View instead?
// TODO: Prefer to use templateUrl until at least WebStorm supports template in Dart file?
@Component(
    selector: 'my-app',
    template: '''
  <h1>{{title}}</h1>
  <h2>My favorite hero is: {{myHero.name}}</h2>
  <p>Heroes:</p>
  <ul>
    <li *ngFor="#hero of heroes">
      {{ hero.name }}
      </li>
  </ul>
  <p *ngIf="heroes.length > 3">There are many heroes!</p>
''',
    directives: const [NgIf, NgFor])
class AppComponent {
  final String title = 'Tour of Heroes';
  final List<Hero> heroes = [
    new Hero(1, 'Windstorm'),
    new Hero(13, 'Bombasto'),
    new Hero(15, 'Magneta'),
    new Hero(20, 'Tornado')
  ];
  Hero myHero;
  AppComponent() {
    this.myHero = this.heroes.first;
  }
}
