package ${packageName}

import ${packageName}.common.di.applicationModule
import android.app.Application
import androidx.lifecycle.DefaultLifecycleObserver
import org.koin.core.context.loadKoinModules
import org.koin.core.context.startKoin
import timber.log.Timber

class AndroidApplication: Application(), DefaultLifecycleObserver {

  override fun onCreate() {
      super.onCreate()
      initializeKoin()
      initializeTimber()
  }

  private fun initializeKoin() {
      startKoin {
            androidContext(this@AndroidApplication)
            loadKoinModules(listOf(applicationModule))
      }
  }

  private fun initializeTimber() {
      if (BuildConfig.DEBUG) {
          Timber.plant(new Timber.DebugTree())
      }
  }
}
