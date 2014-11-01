// Copyright (c) 2014, Nouvelle Communauté. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:polymer/polymer.dart';
import 'dart:html';

/// A Polymer <list-item-element> element.
@CustomTag('list-item-element')
class ListItemElement extends PolymerElement {

  @published Object list;
  
  HtmlElement _element;
  
  ListItemElement.created() : super.created() {
    
  }
  
  void domReady() {
        for(DivElement element in shadowRoot.querySelectorAll('.item')) {
          Element el = element.children[0];
          element..onMouseEnter.listen((e) => el.attributes['z'] = '3')
                   ..onMouseLeave.listen((e) => el.attributes['z'] = '1');
            }
  }
  
  num bookNumber() {
    return (this.list['books'] as List).length;
  }

}
