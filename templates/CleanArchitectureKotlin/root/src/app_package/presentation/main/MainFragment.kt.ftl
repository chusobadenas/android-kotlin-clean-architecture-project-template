package ${packageName}.presentation.main

import android.os.Bundle
import androidx.annotation.NonNull
import androidx.fragment.app.Fragment
import android.view.LayoutInflater
import android.view.ViewGroup
import android.widget.RelativeLayout
import android.widget.TextView

import ${packageName}.R

/**
 * Main fragment
 */
public class MainFragment: Fragment() {

  private val progressView: RelativeLayout
  private val retryView: RelativeLayout
  private val textMessage: TextView

  companion object {
    /**
    * Creates a new instance of a MainFragment.
    */
    fun newInstance(): MainFragment {
      return MainFragment()
    }
  }

  override fun onCreateView(@NonNull inflater: LayoutInflater, container: ViewGroup, savedInstanceState: Bundle): View {
    return inflater.inflate(R.layout.fragment_main, container, false)
  }

  override fun onResume() {
    super.onResume()
    loadMessage()
  }

  override fun showLoading() {
    textMessage.setVisibility(View.GONE)
    progressView.setVisibility(View.VISIBLE)
  }

  override fun hideLoading() {
    textMessage.setVisibility(View.VISIBLE)
    progressView.setVisibility(View.GONE)
  }

  override fun showRetry() {
    textMessage.setVisibility(View.GONE)
    retryView.setVisibility(View.VISIBLE)
  }

  override fun hideRetry() {
    textMessage.setVisibility(View.VISIBLE)
    retryView.setVisibility(View.GONE)
  }

  @OnClick(R.id.bt_retry)
  fun onButtonRetryClick() {
    loadMessage()
  }

  /**
   * Loads the message
   */
  private fun loadMessage() {
    mainPresenter.initialize()
  }

  override fun showMessage(message: String) {
    textMessage.setText(message)
  }
}
