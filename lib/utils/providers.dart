import '/pages/converted/view_model/converted_viewmodel.dart';
import '/utils/theme_viewmode.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import '../pages/about/view_mode/about_viewmodel.dart';
import '../pages/home/view_model/home_viewmodel.dart';
import '../pages/permssions/view_model/permission_viewmodel.dart';

List<SingleChildWidget> providers = [
  ChangeNotifierProvider(create: (context) => PermissionViewModel()),
  ChangeNotifierProvider(create: (context) => HomeViewModel()),
  ChangeNotifierProvider(create: (context) => ThemeViewModel()),
  ChangeNotifierProvider(create: (context) => AboutViewModel()),
  ChangeNotifierProvider(create: (context) => ConvertedViewModel()),
];
