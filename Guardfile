guard :rubocop, all_on_start: false do
  watch(%r{^spec/.+\.rb$})
  watch(%r{^lib/.+\.rb$})
  watch(%r{^.+\.(rb|ru)$})
  watch 'Gemfile'
  watch 'Rakefile'
end

guard 'livereload' do
  watch(%r{^lib/views/.+\.slim})
  watch(%r{^lib/.+\.rb})
  watch(%r{lib/public/.+\..+)})
  watch(%r{lib/config/.+\.yml})
  # Rails Assets Pipeline
  watch(%r{(lib/assets/\w+/(.+\.(scss|css|js|html))).*}) { |m| "/assets/#{m[3]}" }
end

guard 'shotgun', :server => 'thin' do
  watch(%r{lib/app/.+\.rb})
  watch %r{lib/config/.*\.yml}
  watch 'config.ru'
end
