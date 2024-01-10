package ${packageName}.presentation.navigation

import android.content.Context
import android.content.Intent

import ${packageName}.presentation.main.MainActivity


/**
 * Class used to navigate through the application.
 */
class Navigator {

  /**
   * Goes to the main screen.
   *
   * @param context A Context needed to open the destiny activity.
   */
  fun navigateToMain(context: Context) {
    if (context != null) {
        val intentToLaunch: Intent = MainActivity.getCallingIntent(context)
        context.startActivity(intentToLaunch)
    }
  }
}
