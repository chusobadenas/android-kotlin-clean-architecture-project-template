package ${packageName}

import androidx.lifecycle.DefaultLifecycleObserver
import android.app.Application
import timber.log.Timber

class AndroidApplication: Application(), DefaultLifecycleObserver {

  override fun onCreate() {
      super.onCreate()
      initializeTimber()
  }

  private fun initializeTimber() {
      if (BuildConfig.DEBUG) {
          Timber.plant(new Timber.DebugTree())
      }
  }
}
