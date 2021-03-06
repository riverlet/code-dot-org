get '/v2/sections' do
  only_for 'code.org'
  dont_cache
  content_type :json
  JSON.pretty_generate(DashboardSection.fetch_user_sections(dashboard_user_id))
end

post '/v2/sections' do
  only_for 'code.org'
  dont_cache
  unsupported_media_type! unless payload = request.json_body
  forbidden! unless section_id = DashboardSection.create(payload.merge(user:dashboard_user))
  redirect "/v2/sections/#{section_id}"#, 201 #BUGBUG: JQuery is barfing on the 201
end

get '/v2/sections/:id' do |id|
  only_for 'code.org'
  dont_cache
  forbidden! unless section = DashboardSection.fetch_if_allowed(id, dashboard_user_id)
  content_type :json
  JSON.pretty_generate(section.to_hash)
end

delete '/v2/sections/:id' do |id|
  only_for 'code.org'
  dont_cache
  forbidden! unless DashboardSection::delete_if_owner(id, dashboard_user_id)
  no_content!
end
post '/v2/sections/:id/delete' do |id|
  call(env.merge('REQUEST_METHOD'=>'DELETE', 'PATH_INFO'=>"/v2/sections/#{id}"))
end

patch '/v2/sections/:id' do |id|
  only_for 'code.org'
  dont_cache
  unsupported_media_type! unless payload = request.json_body
  forbidden! unless section = DashboardSection::update_if_owner(payload.merge(id:id, user:dashboard_user))
  content_type :json
  JSON.pretty_generate(section.to_hash)
end
post '/v2/sections/:id/update' do |id|
  call(env.merge('REQUEST_METHOD'=>'PATCH', 'PATH_INFO'=>"/v2/sections/#{id}"))
end

get '/v2/sections/:id/students' do |id|
  only_for 'code.org'
  dont_cache
  forbidden! unless section = DashboardSection.fetch_if_allowed(id, dashboard_user_id)
  content_type :json
  JSON.pretty_generate(section.to_hash[:students])
end

post '/v2/sections/:id/students' do |id|
  only_for 'code.org'
  dont_cache
  unsupported_media_type! unless payload = request.json_body
  forbidden! unless section = DashboardSection.fetch_if_teacher(id, dashboard_user_id)
  added_students = section.add_students(payload)
  content_type :json
  JSON.pretty_generate(DashboardStudent.fetch_if_allowed(added_students, dashboard_user_id))
end

delete '/v2/sections/:id/students/:student_id' do |id, student_id|
  only_for 'code.org'
  dont_cache
  forbidden! unless section = DashboardSection::fetch_if_teacher(id, dashboard_user_id)
  forbidden! unless section.remove_student(student_id)
  no_content!
end
post '/v2/sections/:id/delete' do |id|
  call(env.merge('REQUEST_METHOD'=>'DELETE', 'PATH_INFO'=>"/v2/sections/#{id}/students/#{student_id}"))
end

get '/v2/sections/:id/teachers' do |id|
  only_for 'code.org'
  dont_cache
  forbidden! unless section = DashboardSection.fetch_if_allowed(id, dashboard_user_id)
  content_type :json
  JSON.pretty_generate(section.to_hash[:teachers])
end

get '/v2/sections/:id/login_cards' do |id|


end
