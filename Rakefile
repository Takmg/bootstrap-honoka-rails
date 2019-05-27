begin
  # bundlerでインストールしたgemをrequireで読み取り可能とする。
  require 'bundler/setup'
rescue LoadError
  puts 'You must `gem install bundler` and `bundle install` to run rake tasks'
end

# requires
require 'bundler/gem_tasks'   # build, clobber, release などのコマンドを使用可能とする。
require 'rdoc/task'           # RDoc::Taskクラスのrequireを行う。
require 'rake/testtask'       # Rake::TestTaskクラスのrequireを行う。
require 'rake/file_utils_ext' # rake用file_utilsの拡張

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

# test clobberコマンド定義
desc 'Remove files generated during test'
task :clobber_test do
  # 下記 rm_rf を使用するとbegin rescueで囲む必要もないが、
  # あえて rm_r を使用している理由は下記の通り。
  #
  # - 本処理は主にシステムのデフォルトで用意されているrdocに倣っている。
  #   ※rdocの削除処理に対して [secure属性] だけは追加している。
  # - rdocの削除である `rake clobber_rdoc` コマンドを使用すると
  #   ::Rake::Fileutils::rm_r が使用されている。
  # - その rm_r コマンドでは `rm_r @rdoc_dir rescue nil` というように
  #   no such file or directoryエラーが発生する事も考慮して、
  #   rescueを行う処理となっていた。
  #
  # 以上の事から、rm_rf ではなく rm_r を使用している。
  begin
    ::Rake::FileUtilsExt.rm_r('tmp', secure: true)
  rescue StandardError
  end
end

# clobberコマンドで clobber_testが動作するようにする。
task clobber: [:clobber_test]

# test コマンドをrakeのデフォルト動作とする。
task default: :test
