package ${packageName}.domain.interactor.main

import ${packageName}.data.model.User
import ${packageName}.domain.interactor.UseCase
import ${packageName}.domain.repository.UserRepository

/**
 * This class is an implementation of {@link UseCase} in order to say hello.
 */
class SayHello(
    private val userRepository: UserRepository
): UseCase<SayHello.Params, String> {

  override suspend fun run(params: Params): String {
      return userRepository.saySomething(params.user, params.str)
  }

  data class Params(
      val user: User,
      val str: String
  )
}
