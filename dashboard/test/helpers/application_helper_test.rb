require 'test_helper'

class ApplicationHelperTest < ActionView::TestCase

  # Stub current_user
  def current_user
  end

  test "canonical_hostname in test" do
    assert_equal 'test.learn.code.org', canonical_hostname('learn.code.org')
    assert_equal 'test.code.org', canonical_hostname('code.org')
  end

  test "canonical_hostname in prod" do
    set_env :production
    assert_equal 'learn.code.org', canonical_hostname('learn.code.org')
    assert_equal 'code.org', canonical_hostname('code.org')
  end

  test "canonical_hostname in staging" do
    set_env :staging
    assert_equal 'staging.learn.code.org', canonical_hostname('learn.code.org')
    assert_equal 'staging.code.org', canonical_hostname('code.org')
  end

  test "canonical_hostname in development" do
    set_env :development
    assert_equal 'localhost.learn.code.org', canonical_hostname('learn.code.org')
    assert_equal 'localhost.code.org', canonical_hostname('code.org')
  end

  test "code_org_root_path in test" do
    assert_equal 'http://test.code.org', code_org_root_path
  end

  test "code_org_root_path in prod" do
    set_env :production
    assert_equal 'http://code.org', code_org_root_path
  end

  test "code_org_root_path in staging" do
    set_env :staging
    assert_equal 'http://staging.code.org', code_org_root_path
  end

  test "code_org_root_path in development" do
    set_env :development
    assert_equal 'http://localhost.code.org', code_org_root_path
  end

  test "is_k1? when current script returns true for is_k1?" do
    @script = Script.find_by_name('course1')
    assert is_k1?
  end

  test "!is_k1? by default" do
    @level = Maze.create(@maze_data)
    assert !is_k1?
  end

  test "playlab_freeplay_path for k1 levels" do
    def current_user
      OpenStruct.new(primary_script: OpenStruct.new('is_k1?'=>true))
    end
    assert_equal(script_stage_script_level_path('course1', 16, 6), playlab_freeplay_path)
  end

  test "artist_freeplay_path for non-k1 levels" do
    assert_equal(script_stage_script_level_path('artist', 1, 10), artist_freeplay_path)
  end

  test "windows phone 8.1 supported" do
    def request
      OpenStruct.new(headers: OpenStruct.new('User-Agent' => 'Mozilla/5.0 (Mobile; Windows Phone 8.1; Android 4.0; ' \
      'ARM; Trident/7.0; Touch; rv:11.0; IEMobile/11.0; NOKIA; Lumia 930) like iPhone OS 7_0_3 Mac OS X ' \
      'AppleWebKit/537 (KHTML, like Gecko) Mobile Safari/537'))
    end
    assert(!browser.cdo_unsupported?)
    assert(!browser.cdo_partially_supported?)
  end

  test "chrome 34 detected" do
    def request
      OpenStruct.new(headers: OpenStruct.new('User-Agent' => 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) ' \
      'AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.116 Safari/537.36'))
    end
    assert(browser.chrome?)
    assert(browser.version.to_s.to_i == 34)
  end

  test 'certificate images for hoc-type scripts are all hoc certificates' do
    # old hoc, new hoc, frozen, playlab, and flappy are all the same certificate
    user = create :user
    assert_equal script_certificate_image_url(user, Script.find(Script::HOC_ID)), script_certificate_image_url(user, Script.find_by_name(Script::HOC_NAME))
    assert_equal script_certificate_image_url(user, Script.find(Script::HOC_ID)), script_certificate_image_url(user, Script.find_by_name(Script::FROZEN_NAME))
    assert_equal script_certificate_image_url(user, Script.find(Script::HOC_ID)), script_certificate_image_url(user, Script.find(Script::FLAPPY_ID))
    assert_equal script_certificate_image_url(user, Script.find(Script::HOC_ID)), script_certificate_image_url(user, Script.find_by_name(Script::PLAYLAB_NAME))

     # but course1 is a different certificate
    assert_not_equal script_certificate_image_url(user, Script.find(Script::HOC_ID)), script_certificate_image_url(user, Script.find_by_name('course1'))
  end
end
