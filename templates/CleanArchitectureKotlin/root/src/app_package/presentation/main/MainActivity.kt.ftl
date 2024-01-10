package ${packageName}.presentation.main

import android.content.Context
import android.content.Intent
import android.os.Bundle

import androidx.appcompat.app.AppCompatActivity
import androidx.appcompat.widget.Toolbar

import ${packageName}.R

/**
 * Main activity
 */
class MainActivity: AppCompatActivity() {

  private val toolbar: Toolbar

  companion object {
    fun getCallingIntent(context: Context): Intent {
      return Intent(context, MainActivity::class.java)
    }
  }

  override fun onCreate(savedInstanceState: Bundle) {
    super.onCreate(savedInstanceState)
    setContentView(R.layout.${activityLayoutName})
    setSupportActionBar(toolbar)
    if (savedInstanceState == null) {
        addFragment(R.id.fragmentContainer, MainFragment.newInstance())
    }
  }
}
