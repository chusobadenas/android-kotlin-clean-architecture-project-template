android {
  compileSdkVersion 23
  buildToolsVersion "34.0.0"
  defaultConfig {
    targetSdkVersion 34
  }
  lintOptions {
    warning 'InvalidPackage'
  }
  compileOptions {
    sourceCompatibility JavaVersion.VERSION_1_8
    targetCompatibility JavaVersion.VERSION_1_8
  }
}
