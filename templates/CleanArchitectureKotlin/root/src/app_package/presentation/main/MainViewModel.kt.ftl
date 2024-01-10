package ${packageName}.presentation.main

import ${packageName}.R
import ${packageName}.data.model.User
import ${packageName}.domain.interactor.UseCase

class MainViewModel(
    private val sayHelloUseCase: UseCase
): ViewModel() {

  fun initialize() {
    checkViewAttached()
    loadMessage()
  }

  /**
   * Loads the message.
   */
  private fun loadMessage() {
    hideRetry()
    showLoading()
    getMessage()
  }

  private fun getMessage() {
    val user: User = User.create("John", "Doe")
    String message = context.getString(R.string.sample_text)
    sayHelloUseCase.execute(SayHelloSubscriber(), user, message)
  }
}
