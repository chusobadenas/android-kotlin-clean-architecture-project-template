package ${packageName}.domain.repository

import ${packageName}.data.model.User


/**
 * Interface that represents a Repository for getting user related data.
 */
interface UserRepository {

  fun saySomething(user: User, str: String): String
}
