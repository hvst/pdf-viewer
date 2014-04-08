namespace :pdf_viewer do
  task :compress_worker do
    run_compressor
  end

  def run_compressor
    `rm vendor/assets/javascripts/worker.min.js`
    `closure-compiler --warning_level QUIET  --compilation_level SIMPLE_OPTIMIZATIONS --language_in=ECMASCRIPT5 vendor/assets/javascripts/worker.js > vendor/assets/javascripts/worker.min.js`
  end
end
