package ${packageName}.presentation.splash

import android.os.Bundle
import androidx.appcompat.app.AppCompatActivity

/**
 * Activity that shows the splash screen
 */
class SplashActivity: AppCompatActivity() {

  override fun onCreate(savedInstanceState: Bundle) {
      super.onCreate(savedInstanceState)
      getNavigator().navigateToMain(this)
      finish()
  }
}
