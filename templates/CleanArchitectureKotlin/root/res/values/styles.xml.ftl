<?xml version="1.0" encoding="utf-8"?>
<resources>
    <style name="MyAppTheme" parent="Theme.AppCompat.Light">
        <item name="colorPrimary">@color/colorPrimary</item>
        <item name="colorPrimaryDark">@color/colorPrimaryDark</item>
        <item name="colorAccent">@color/colorAccent</item>
        <item name="alertDialogTheme">@style/AlertDialogStyle</item>
        <item name="android:itemTextAppearance">@style/OptionsMenuTextColor</item>
        <item name="android:textColorPrimary">@color/black_87pc</item>
        <item name="android:textColor">@color/black_87pc</item>
    </style>

    <style name="MyAppTheme.NoActionBar" parent="MyAppTheme">
        <item name="windowNoTitle">true</item>
        <item name="windowActionBar">false</item>
    </style>

    <style name="MyAppTheme.ActionBar" parent="MyAppTheme">
        <item name="android:textColorPrimary">@android:color/white</item>
        <item name="drawerArrowStyle">@style/HamburgerIconStyle</item>
        <item name="android:itemTextAppearance">@style/OptionsMenuTextColor</item>
    </style>

    <style name="AlertDialogStyle" parent="Theme.AppCompat.Light.Dialog.Alert">
        <item name="android:windowTitleStyle">@style/DialogTitleText</item>
        <item name="colorAccent">@color/colorPrimary</item>
    </style>

    <style name="DialogTitleText">
        <item name="android:textColor">@color/black_87pc</item>
        <item name="android:textAppearance">@style/TextAppearance.AppCompat.Title</item>
    </style>

    <style name="HamburgerIconStyle" parent="Widget.AppCompat.DrawerArrowToggle">
        <item name="color">@android:color/white</item>
    </style>

    <style name="OptionsMenuTextColor" parent="@android:style/TextAppearance.Widget.IconMenu.Item">
        <item name="android:textColor">@android:color/black</item>
    </style>

    <style name="MyAppTheme.ProgressBar">
        <item name="android:layout_width">wrap_content</item>
        <item name="android:layout_height">wrap_content</item>
        <item name="android:layout_centerInParent">true</item>
        <item name="android:layout_gravity">center</item>
        <item name="android:visibility">visible</item>
    </style>

    <style name="MyAppTheme.Button">
        <item name="android:layout_width">wrap_content</item>
        <item name="android:layout_height">wrap_content</item>
        <item name="android:layout_centerVertical">true</item>
        <item name="android:layout_centerHorizontal">true</item>
        <item name="android:layout_gravity">center</item>
    </style>

    <style name="MyAppTheme.TextViewTitle">
        <item name="android:layout_width">match_parent</item>
        <item name="android:layout_height">wrap_content</item>
        <item name="android:layout_marginTop">18dp</item>
        <item name="android:textStyle">bold</item>
    </style>

    <style name="MySplashTheme" parent="Theme.AppCompat.NoActionBar">
        <item name="android:windowBackground">@drawable/background_splash</item>
    </style>
</resources>
