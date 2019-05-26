begin
  # bundlerでインストールしたgemをrequireで読み取り可能とする。
  require 'bundler/setup'
rescue LoadError
  puts 'You must `gem install bundler` and `bundle install` to run rake tasks'
end

# requires
require 'bundler/gem_tasks' # build, clobber, release などのコマンドを使用可能とする。
require 'rdoc/task'         # RDoc::Taskクラスのrequireを行う。
require 'rake/testtask'     # Rake::TestTaskクラスのrequireを行う。

# rdoc, clobber_rdoc コマンド定義
RDoc::Task.new(:rdoc) do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title    = 'Bootstrap::Honoka::Rails'
  rdoc.options << '--line-numbers'
  rdoc.rdoc_files.include('README.md', 'VERSIONS.md', 'lib/**/*.rb')
end

# test コマンド定義
Rake::TestTask.new(:test) do |t|
  t.libs << 'test'                # require pathの追加
  t.pattern = 'test/**/*_test.rb' # 実行するテストコマンド
  t.verbose = false               # 詳細なテキストを非表示化
  t.warning = false               # 警告を非表示
end

# test コマンドをrakeのデフォルト動作とする。
task default: :test
