package ${packageName}.data.repository.remote

import ${packageName}.BuildConfig
import com.google.gson.Gson
import com.google.gson.GsonBuilder
import java.util.concurrent.TimeUnit
import okhttp3.OkHttpClient
import okhttp3.logging.HttpLoggingInterceptor
import retrofit2.Retrofit
import retrofit2.converter.gson.GsonConverterFactory

/**
 * APIService for retrieving data from the network using Retrofit.
 */
interface APIService {

  companion oject {
      const val CONNECT_TIMEOUT = 15000
      const val READ_TIMEOUT = 20000
      const val WRITE_TIMEOUT = 20000
      // PUT YOUT API URL HERE
      const val API_BASE_URL = "https://jsonplaceholder.typicode.com/"
  }

  /********
   * Helper class that sets up a new services
   *******/
  class Creator {

    companion object {
      private fun createHttpClient(): OkHttpClient {
        val clientBuilder: OkHttpClient.Builder = OkHttpClient.Builder()

        // Enable logging
        if (BuildConfig.DEBUG) {
          val interceptor: HttpLoggingInterceptor = HttpLoggingInterceptor()
          interceptor.setLevel(HttpLoggingInterceptor.Level.BASIC)
          clientBuilder.addInterceptor(interceptor)
        }

        return clientBuilder
          .connectTimeout(CONNECT_TIMEOUT, TimeUnit.MILLISECONDS)
          .readTimeout(READ_TIMEOUT, TimeUnit.MILLISECONDS)
          .writeTimeout(WRITE_TIMEOUT, TimeUnit.MILLISECONDS)
          .build()
      }

      private fun createRetrofit(baseUrl: String): Retrofit {
        val gson: Gson = GsonBuilder()
          .setDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'")
          .registerTypeAdapterFactory(GsonAdapterFactory.create())
          .create()

        return Retrofit.Builder()
          .baseUrl(baseUrl)
          .client(createHttpClient())
          .addConverterFactory(GsonConverterFactory.create(gson))
          .build()
      }

      fun newAPIService(): APIService {
        return createRetrofit(API_BASE_URL).create(APIService::class)
      }
    }
  }
}
