require 'test_helper'

class RedirectsTest < ActionDispatch::IntegrationTest
  test 'redirect k-1' do
    get '/s/k-1'
    assert_redirected_to '/s/course1'
  end

  test 'redirect 2-3' do
    get '/s/2-3'
    assert_redirected_to '/s/course2'
  end

  test 'redirect 4-5' do
    get '/s/4-5'
    assert_redirected_to '/s/course3'
  end

  test 'redirect k-1 puzzle' do
    get '/s/k-1/puzzle/99'
    assert_redirected_to '/s/course1'
  end

  test 'redirect 2-3 puzzle' do
    get '/s/2-3/puzzle/99'
    assert_redirected_to '/s/course2'
  end

  test 'redirect 4-5 puzzle' do
    get '/s/4-5/puzzle/99'
    assert_redirected_to '/s/course3'
  end

  test 'redirects /sh to /c' do
    get '/sh/1'
    assert_redirected_to '/c/1'

    get '/sh/1/edit'
    assert_redirected_to '/c/1/edit'

    get '/sh/1/original_image'
    assert_redirected_to '/c/1/original_image'

    get '/sh/1/generate_image'
    assert_redirected_to '/c/1/generate_image'
  end

  test 'redirects /u to /c' do
    get '/u/1'
    assert_redirected_to '/c/1'

    get '/u/1/edit'
    assert_redirected_to '/c/1/edit'

    get '/u/1/original_image'
    assert_redirected_to '/c/1/original_image'

    get '/u/1/generate_image'
    assert_redirected_to '/c/1/generate_image'
  end

end
