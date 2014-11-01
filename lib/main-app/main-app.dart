// Copyright (c) 2014, Nouvelle Communauté. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:polymer/polymer.dart';

/// A Polymer <main-app> element.
@CustomTag('main-app')
class MainApp extends PolymerElement {

  MainApp.created() : super.created() {
    var coreDrawer = $['drawerPanel'];
        coreDrawer.addEventListener('core-responsive-change', (e) {
          if($['drawerPanel'].narrow){
            $['toggleDrawerButton'].style.display = 'block';
          } else {
            $['toggleDrawerButton'].style.display = 'none';
          }
        });
  }

  toggleDrawer() {
      $['drawerPanel'].togglePanel();
  }
  
  
  
  
}