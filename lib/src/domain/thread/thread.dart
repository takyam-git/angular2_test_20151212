library angular2_test_20151212.domain.thread;

import 'dart:async';

//とりあえずスレッドは1個しか無いものとする
class Thread {
  static Thread _instance;

  //singleton
  factory Thread() {
    if (Thread._instance == null) {
      Thread._instance = new Thread._internal();
    }
    return Thread._instance;
  }

  List<Res> _resList = new List<Res>();
  int _currentID = 0;

  Thread._internal();

  List<Res> get resList => this._resList;

  void addRes(String resBody) {
    Res res = new Res(++_currentID, resBody.trim(), new DateTime.now());
    this._resList.add(res);
  }

  void removeRes(Res res) {
    this._resList.remove(res);
  }
}

class Res {
  final int id;
  final String body;
  final DateTime postedAt;

  Res(this.id, this.body, this.postedAt);
}