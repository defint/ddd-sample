import 'package:auto_route/auto_route_annotations.dart';
import 'package:web_form/presentation/screens/form_screen.dart';
import 'package:web_form/presentation/screens/home_screen.dart';
import 'package:web_form/presentation/screens/second_screen.dart';

@MaterialAutoRouter()
class $Router {
  @initial
  HomeScreen homeScreenRoute;
  SecondScreen secondScreenRoute;
  FormScreen formScreenRoute;
}
