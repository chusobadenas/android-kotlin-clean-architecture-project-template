<?xml version="1.0"?>
<recipe>
    <!-- Dependencies -->
    <dependency mavenUrl="androidx.appcompat:appcompat:${androidXVersion}"/>
    <dependency mavenUrl="androidx.core:core-ktx:1.12.0"/>
    <dependency mavenUrl="androidx.activity:activity-ktx:1.8.2"/>
    <dependency mavenUrl="androidx.fragment:fragment-ktx:1.6.2"/>
    <dependency mavenUrl="androidx.lifecycle:lifecycle-common-java8:${lifecycleVersion}"/>
    <dependency mavenUrl="androidx.lifecycle:lifecycle-livedata-ktx:${lifecycleVersion}"/>
    <dependency mavenUrl="androidx.lifecycle:lifecycle-process:${lifecycleVersion}"/>
    <dependency mavenUrl="androidx.lifecycle:lifecycle-runtime-ktx:${lifecycleVersion}"/>
    <dependency mavenUrl="androidx.lifecycle:lifecycle-viewmodel-ktx:${lifecycleVersion}"/>
    <dependency mavenUrl="org.jetbrains.kotlin:kotlin-reflect:${kotlinVersion}"/>
    <dependency mavenUrl="org.jetbrains.kotlin:kotlin-stdlib-jdk7:${kotlinVersion}"/>
    <dependency mavenUrl="org.jetbrains.kotlin:kotlinx-coroutines-android:${kotlinCoroutinesVersion}"/>
    <dependency mavenUrl="org.jetbrains.kotlin:kotlinx-coroutines-core:${kotlinCoroutinesVersion}"/>
    <dependency mavenUrl="androidx.cardview:cardview:1.0.0"/>
    <dependency mavenUrl="androidx.constraintlayout:constraintlayout:2.1.4"/>
    <dependency mavenUrl="com.google.android.material:material:1.11.0"/>
    <dependency mavenUrl="androidx.recyclerview:recyclerview:1.3.2"/>
    <dependency mavenUrl="io.insert-koin:koin-android:${koinVersion}"/>
    <dependency mavenUrl="io.insert-koin:koin-android-compat:${koinVersion}"/>
    <dependency mavenUrl="com.github.bumptech.glide:glide:${glideVersion}"/>
    <dependency mavenUrl="com.google.android.gms:play-services-gcm:${playServicesVersion}"/>
    <dependency mavenUrl="com.google.code.gson:gson:${gsonVersion}"/>
    <dependency mavenUrl="com.jakewharton.timber:timber:${timberVersion}"/>
    <dependency mavenUrl="com.squareup.okhttp3:logging-interceptor:${okHttpVersion}"/>
    <dependency mavenUrl="com.squareup.retrofit2:retrofit:${retrofitVersion}"/>
    <dependency mavenUrl="com.squareup.retrofit2:converter-gson:${retrofitVersion}"/>
    <dependency mavenUrl="org.robolectric:robolectric:${roboElectricVersion}" gradleConfiguration="testImplementation"/>
    <dependency mavenUrl="androidx.test:core-ktx:${testCoreKtxVersion}" gradleConfiguration="testImplementation"/>
    <dependency mavenUrl="androidx.test.ext:junit-ktx:1.1.5" gradleConfiguration="testImplementation"/>
    <dependency mavenUrl="junit:junit:4.13.2" gradleConfiguration="testImplementation"/>
    <dependency mavenUrl="com.github.bumptech.glide:compiler:${glideVersion}" gradleConfiguration="annotationProcessor"/>

    <!-- Gradle -->
    <merge from="build.gradle.ftl"
             to="${escapeXmlAttribute(topOut)}/build.gradle"/>

    <merge from="app.build.gradle.ftl"
             to="${escapeXmlAttribute(appOut)}/build.gradle"/>

    <!-- Manifest -->
    <merge from="AndroidManifest.xml.ftl"
             to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml"/>

    <!-- Resources -->
    <copy from="res/values/dimens.xml"
             to="${escapeXmlAttribute(resOut)}/values/dimens.xml"/>
    <merge from="res/values/colors.xml.ftl"
             to="${escapeXmlAttribute(resOut)}/values/colors.xml"/>
    <merge from="res/values/strings.xml.ftl"
             to="${escapeXmlAttribute(resOut)}/values/strings.xml"/>
    <merge from="res/values/styles.xml.ftl"
             to="${escapeXmlAttribute(resOut)}/values/styles.xml"/>

    <!-- Drawable -->
    <copy from="res/drawable/background_splash.xml"
            to="${escapeXmlAttribute(resOut)}/drawable/background_splash.xml"/>

    <!-- Layouts -->
    <copy from="res/layout/activity_main.xml"
            to="${escapeXmlAttribute(resOut)}/layout/${activityLayoutName}.xml"/>
    <copy from="res/layout/fragment_main.xml"
                to="${escapeXmlAttribute(resOut)}/layout/fragment_main.xml"/>
    <copy from="res/layout/list_item_single_choice.xml"
                to="${escapeXmlAttribute(resOut)}/layout/list_item_single_choice.xml"/>
    <copy from="res/layout/loading_progress_view.xml"
                to="${escapeXmlAttribute(resOut)}/layout/loading_progress_view.xml"/>
    <copy from="res/layout/toolbar.xml"
                to="${escapeXmlAttribute(resOut)}/layout/toolbar.xml"/>
    <copy from="res/layout/view_progress.xml"
                to="${escapeXmlAttribute(resOut)}/layout/view_progress.xml"/>
    <copy from="res/layout/view_retry.xml"
                to="${escapeXmlAttribute(resOut)}/layout/view_retry.xml"/>

    <!-- Classes -->
    <instantiate from="src/app_package/AndroidApplication.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/AndroidApplication.kt"/>

    <!-- COMMON -->
    <instantiate from="src/app_package/common/di/ApplicationModule.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/common/di/ApplicationModule.kt"/>

    <!-- DATA -->
    <instantiate from="src/app_package/data/model/User.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/data/model/User.kt"/>
    <instantiate from="src/app_package/data/repository/remote/APIService.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/data/repository/remote/APIService.kt"/>
    <instantiate from="src/app_package/data/repository/UserDataRepository.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/data/repository/UserDataRepository.kt"/>

    <!-- DOMAIN -->
    <instantiate from="src/app_package/domain/interactor/UseCase.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/domain/interactor/UseCase.kt"/>
    <instantiate from="src/app_package/domain/interactor/main/SayHello.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/domain/interactor/main/SayHello.kt"/>
    <instantiate from="src/app_package/domain/repository/UserRepository.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/domain/repository/UserRepository.kt"/>

    <!-- PRESENTATION -->
    <instantiate from="src/app_package/presentation/main/MainActivity.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/presentation/main/${activityName}.kt"/>
    <instantiate from="src/app_package/presentation/main/MainFragment.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/presentation/main/MainFragment.kt"/>
    <instantiate from="src/app_package/presentation/main/MainViewModel.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/presentation/main/MainViewModel.kt"/>

    <instantiate from="src/app_package/presentation/navigation/Navigator.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/presentation/navigation/Navigator.kt"/>

    <instantiate from="src/app_package/presentation/splash/SplashActivity.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/presentation/splash/SplashActivity.kt"/>

    <!-- Unit tests -->
    <instantiate from="test/app_package/AndroidApplicationTest.kt.ftl"
                   to="${escapeXmlAttribute(unitTestOut)}/AndroidApplicationTest.kt"/>

    <!-- COMMON -->
    <instantiate from="test/app_package/common/di/modules/ApplicationTestModule.kt.ftl"
                   to="${escapeXmlAttribute(unitTestOut)}/common/di/modules/ApplicationTestModule.kt"/>

    <!-- Open files to edit -->
    <open file="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml"/>
</recipe>
