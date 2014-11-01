// Copyright (c) 2014, Nouvelle Communauté. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:polymer/polymer.dart';

/// A Polymer <list-item-element> element.
@CustomTag('list-item-element')
class ListItemElement extends PolymerElement {

  @published Object list;
  
  ListItemElement.created() : super.created();
  
  num bookNumber() {
    return (this.list['books'] as List).length;
  }

}
