namespace :pdf_viewer do
  WORKER_MIN_PATH = 'public/pdf_viewer_rails/worker.min.js'
  WORKER_PATH = 'vendor/assets/javascripts/pdf_viewer_rails/pdf.worker.js'

  desc "minimize the worker file"
  task :compress_worker do
    rm_f WORKER_MIN_PATH
    `closure-compiler --warning_level QUIET  --compilation_level SIMPLE_OPTIMIZATIONS --language_in=ECMASCRIPT5 #{WORKER_PATH} > #{WORKER_MIN_PATH}`
  end
end
