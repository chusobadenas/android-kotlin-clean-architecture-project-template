package ${packageName}.domain.interactor

import kotlinx.coroutines.CoroutineDispatcher
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.GlobalScope
import kotlinx.coroutines.Job
import kotlinx.coroutines.async
import kotlinx.coroutines.launch

/**
 * Abstract class for a Use Case (Interactor in terms of Clean Architecture).
 * This interface represents a execution unit for different use cases (this means any use case
 * in the application should implement this contract).
 */
abstract class UseCase<Params, Result> {

    abstract suspend fun run(params: Params): Result

    suspend operator fun invoke(params: Params): Result = run(params)

    fun invoke(
            scope: CoroutineScope = GlobalScope,
            dispatcher: CoroutineDispatcher = Dispatchers.Default,
            params: Params,
            onResult: (Result) -> Unit = {}
    ): Job {
        val job = scope.async(dispatcher) { run(params) }
        scope.launch(Dispatchers.Main) { onResult(job.await()) }
        return job
    }
}
