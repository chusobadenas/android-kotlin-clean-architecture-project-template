package ${packageName}.presentation.main

import ${packageName}.R
import ${packageName}.presentation.main.MainViewModel
import android.os.Bundle
import androidx.annotation.NonNull
import androidx.fragment.app.Fragment
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import org.koin.androidx.viewmodel.dsl.viewModel

/**
 * Main fragment
 */
public class MainFragment: Fragment() {

  companion object {
      fun newInstance(): MainFragment {
          return MainFragment()
      }
  }

  private val mainViewModel: MainViewModel by viewModel()

  override fun onCreateView(@NonNull inflater: LayoutInflater, container: ViewGroup, savedInstanceState: Bundle): View {
    return inflater.inflate(R.layout.fragment_main, container, false)
  }

  override fun onResume() {
    super.onResume()
    loadMessage()
  }

  /**
   * Loads the message
   */
  fun loadMessage() {
    mainViewModel.loadMessage()
  }
}
