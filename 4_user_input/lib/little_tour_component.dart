library angular2_developer_guides.little_tour_component;

import "package:angular2/angular2.dart";

@Component(
    selector: 'little-tour',
    template: r'''
    <input #newHero
      (keyup.enter)="addHero(newHero.value)"
      (blur)="addHero(newHero.value); newHero.value='' ">

    <button (click)=addHero(newHero.value)>Add</button>

    <ul><li *ngFor="#hero of heroes">{{hero}}</li></ul>
  ''',
    directives: const [NgIf, NgFor])
class LittleTourComponent {
  List<String> heroes = ['Windstorm', 'Bombasto', 'Magneta', 'Tornado'];

  void addHero(String newHero) {
    if (newHero != null) this.heroes.add(newHero);
  }
}
