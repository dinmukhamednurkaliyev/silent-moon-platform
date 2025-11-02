enum SilentMoonAssets {
  facebook(path: 'assets/icons/google.svg'),
  google(path: 'assets/icons/facebook.svg'),
  logoLigh(path: 'assets/icons/logo_light.svg'),
  logoDark(path: 'assets/icons/logo_dark.svg')
  ;

  const SilentMoonAssets({required this.path});
  final String path;
}
