library angular2_test_20151212.components.res;

import 'dart:html';
import 'package:angular2/angular2.dart';
import 'package:angular2_test_20151212/src/domain/thread/thread.dart';
import 'package:angular2_test_20151212/src/pipes/nl2br.dart';

@Component(
    selector: 'my-app-res',
    templateUrl: 'res.html',
    directives: const [NgIf],
    pipes: const [Nl2BrPipe]
)
class ResComponent {
  @Input() Res res;

  ResComponent();

  void destroy(Event event) {
    event.preventDefault();
    new Thread().removeRes(this.res);
  }
}
