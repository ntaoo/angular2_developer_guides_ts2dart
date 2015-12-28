// Copyright (c) 2015, <your name>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

library angular2_developer_guides.app_component;

import "package:angular2/angular2.dart";
import "package:angular2_developer_guides/hero.dart";

// Unlike TypeScript version, you must specify directives list (at least in current version).
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
