package ${packageName}

import org.koin.android.ext.koin.androidApplication
import org.koin.androidx.viewmodel.dsl.viewModel
import org.koin.dsl.module

val applicationModule
    get() = module {
        factory { APIService.Creator.newAPIService() }
        factory<UserRepository> { UserDataRepository(get()) }
        factory { SayHello(get()) }
        factory { Navigator() }
        viewModel { MainViewModel(androidApplication(), get()) }
    }
