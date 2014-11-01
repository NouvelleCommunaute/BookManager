// Copyright (c) 2014, Nouvelle Communauté. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:polymer/polymer.dart';
import 'dart:convert' show JSON;
import 'dart:html';

/// A Polymer <profile-element> element.
@CustomTag('profile-element')
class ProfileElement extends PolymerElement {

  @observable
  Object profile = {'name' : 'HoBi'};
  
  ProfileElement.created() : super.created() {
    this.makeRequest();
  }

  void makeRequest() {
    var path = 'data/profile.json';
       
    HttpRequest.getString(path)
    .then(loadJSON)
    .catchError((e) => window.alert(e.toString()));
  }
  
  void loadJSON(String content) {
    this.profile = JSON.decode(content);
    print(this.profile);
  }
}
