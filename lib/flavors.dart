enum Flavor {
  development,
  staging,
  production,
}

class F {
  static Flavor? appFlavor;

  static String get name => appFlavor?.name ?? '';

  static String get title {
    return switch (appFlavor) {
      Flavor.development => 'Ulearna App [Dev]',
      Flavor.staging => 'Ulearna App [STG]',
      Flavor.production => 'Ulearna App',
      _ => 'title'
    };
  }
}
