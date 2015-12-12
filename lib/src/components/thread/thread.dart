library angular2_test_20151212.components.thread;

import 'package:angular2/angular2.dart';
import 'package:angular2_test_20151212/src/domain/thread/thread.dart';
import 'package:angular2_test_20151212/src/components/res/res.dart';

@Component(
    selector: 'my-app-thread',
    templateUrl: 'thread.html',
    directives: const [NgFor, NgIf, ResComponent]
)
class ThreadComponent {
  Thread _thread = new Thread();
  List<Res> resList;

  ThreadComponent() {
    this.resList = this._thread.resList;
  }
}
