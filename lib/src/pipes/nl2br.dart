library angular2_test_20151212.pipes.nl2br;

import 'dart:convert';
import 'package:angular2/angular2.dart';

@Pipe(name: "nl2br")
@Injectable()
class Nl2BrPipe implements PipeTransform {
  final _regexp = new RegExp('(\r\n|\n\r|\n|\r)');

  dynamic transform(dynamic value, List<dynamic> args) {
    return HTML_ESCAPE.convert(value).replaceAll(this._regexp, '<br>');
  }
}
