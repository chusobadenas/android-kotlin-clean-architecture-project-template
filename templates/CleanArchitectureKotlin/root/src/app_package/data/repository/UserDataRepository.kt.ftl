package ${packageName}.data.repository

import ${packageName}.data.entity.User
import ${packageName}.data.repository.remote.APIService
import ${packageName}.domain.repository.UserRepository

/**
 * {@link UserRepository} for retrieving user data.
 */
class UserDataRepository(
    private val apiService: APIService
): UserRepository {

  override fun saySomething(user: User, str: String): String {
    val result = user.name() + " " + user.surname() + " says: " + str
    return result
  }
}
