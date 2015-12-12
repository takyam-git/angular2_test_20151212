library angular2_test_20151212.components.post;

import 'package:angular2/angular2.dart';
import 'package:angular2_test_20151212/src/domain/thread/thread.dart';
import 'dart:html';

@Component(
    selector: 'my-app-post',
    templateUrl: 'post.html'
)
class PostComponent {
  Thread _thread = new Thread();

  PostComponent();

  void postNewRes(Event event, TextAreaElement resInput) {
    event.preventDefault();
    String resBody = resInput.value;
    resInput.value = '';
    this._thread.addRes(resBody);
  }
}
