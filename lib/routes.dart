import 'package:fluro/fluro.dart';
import 'package:preacher_helper/controllers/index_controller.dart';

final router = FluroRouter.appRouter;

void defineRoutes() {
  router.define("/", handler: indexHandler);
}
