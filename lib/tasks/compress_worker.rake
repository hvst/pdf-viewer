namespace :pdf_viewer do
  task :compress_worker do
    run_compressor
  end

  def run_compressor
    `rm vendor/assets/javascripts/worker.min.js`
    `closure-compiler  --compilation_level=WHITESPACE_ONLY --language_in=ECMASCRIPT5 vendor/assets/javascripts/worker.js > vendor/assets/javascripts/worker.min.js`
  end
end
