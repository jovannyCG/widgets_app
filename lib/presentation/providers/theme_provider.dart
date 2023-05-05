

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

final isDarkmodeProvider = StateProvider((ref) => false);
final selectedColor = StateProvider((ref) => 0);

final colorListProvider = Provider((ref) => colorList);

final themeNotifierProvider = StateNotifierProvider<ThemeNotifier, AppTheme>(
  (ref) => ThemeNotifier(),
  );


class ThemeNotifier extends StateNotifier<AppTheme>{

  ThemeNotifier(): super(AppTheme());

}