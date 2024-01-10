package ${packageName}.presentation.main

import ${packageName}.R
import ${packageName}.data.model.User
import ${packageName}.domain.interactor.main.SayHello
import android.app.Application
import androidx.lifecycle.AndroidViewModel
import androidx.lifecycle.DefaultLifecycleObserver
import androidx.lifecycle.viewModelScope

class MainViewModel(
    private val applicationContext: Application,
    private val sayHelloUseCase: SayHello
): AndroidViewModel(applicationContext), DefaultLifecycleObserver {

  /**
   * Loads the message.
   */
  fun loadMessage() {
    val user: User = User("John", "Doe")
    val message: String = applicationContext.getString(R.string.sample_text)
    sayHelloUseCase.invoke(scope = viewModelScope, params = SayHello.Params(user, message))
  }
}
