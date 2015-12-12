library angular2_test_20151212.app_component;

import 'package:angular2/angular2.dart';
import 'package:angular2_test_20151212/src/domain/thread/thread.dart';
import 'package:angular2_test_20151212/src/components/thread/thread.dart';
import 'package:angular2_test_20151212/src/components/post/post.dart';

@Component(
    selector: 'my-app',
    templateUrl: 'app_component.html',
    directives: const [ThreadComponent, PostComponent]
)
class AppComponent {
  Thread thread = new Thread();
}
