package ${packageName}.data.repository

import ${packageName}.data.model.User
import ${packageName}.data.repository.remote.APIService
import ${packageName}.domain.repository.UserRepository

/**
 * {@link UserRepository} for retrieving user data.
 */
class UserDataRepository(
    private val apiService: APIService
): UserRepository {

  override fun saySomething(user: User, str: String): String {
    return "${user.name} ${user.surname} says: $str"
  }
}
