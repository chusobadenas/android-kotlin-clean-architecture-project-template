package ${packageName}.presentation.main

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.appcompat.app.AppCompatActivity
import ${packageName}.R

/**
 * Main activity
 */
class MainActivity: AppCompatActivity() {

  companion object {
      fun getCallingIntent(context: Context): Intent {
          return Intent(context, MainActivity::class)
      }
  }

  override fun onCreate(savedInstanceState: Bundle) {
    super.onCreate(savedInstanceState)
    setContentView(R.layout.${activityLayoutName})
    if (savedInstanceState == null) {
        addFragment(R.id.fragmentContainer, MainFragment.newInstance())
    }
  }
}
