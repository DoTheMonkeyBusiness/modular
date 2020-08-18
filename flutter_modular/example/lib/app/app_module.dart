import 'package:flutter/widgets.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'app_widget.dart';
import 'gentest/test.controller.dart';
import 'modules/home/home_module.dart';
import 'modules/tabs/tabs_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        $HomeRealController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, module: TabsModule()),
        ModularRouter("/home", module: HomeModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();
}
