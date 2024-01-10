package ${packageName}.domain.interactor.main

import ${packageName}.data.model.User
import ${packageName}.domain.interactor.UseCase
import ${packageName}.domain.repository.UserRepository

/**
 * This class is an implementation of {@link UseCase} in order to say hello.
 */
class SayHello(
    private val userRepository: UserRepository
): UseCase {

  override fun buildUseCaseObservable(param: Array<Any>): String {
    val user: User = (User) param[0]
    val str: String = (String) param[1]
    return userRepository.saySomething(user, str)
  }
}
