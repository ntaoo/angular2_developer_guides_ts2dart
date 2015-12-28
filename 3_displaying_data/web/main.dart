// Copyright (c) 2015, <your name>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

library angular2_developer_guides.web;

// Although angular2/bootstrap.dart is marked '@deprecated' in the comment, using platform/browser.dart just like TypeScript version instead causes some error maybe due to the missing import. I believe this will be fixed the docs will be revised soon.
// import "package:angular2/platform/browser.dart";
import 'package:angular2/bootstrap.dart';
import "package:angular2_developer_guides/app_component.dart";

main() {
  bootstrap(AppComponent);
}
