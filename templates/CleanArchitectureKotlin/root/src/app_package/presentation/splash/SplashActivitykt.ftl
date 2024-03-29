package ${packageName}.presentation.splash

import {packageName}.presentation.navigation.Navigator
import android.os.Bundle
import androidx.appcompat.app.AppCompatActivity
import org.koin.android.ext.android.inject

/**
 * Activity that shows the splash screen
 */
class SplashActivity: AppCompatActivity() {

  private val navigator: Navigator by inject()

  override fun onCreate(savedInstanceState: Bundle) {
      super.onCreate(savedInstanceState)
      navigator.navigateToMain(this)
      finish()
  }
}
