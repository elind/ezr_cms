require './test/test_helper'

class EzrConfigTest < ActionController::IntegrationTest
  # fixtures :your, :models

  def setup
    get "/pages/index"
    @ezr_config = assigns(:ezr_config)
  end

  def test_design_config
    assert_equal ["ubs_en", "ubs", "default"], @ezr_config[:design][:config_order]
  end

  def test_env_config
    assert @ezr_config[:env][:debug_mode]
  end

end
