require_dependency "pdf_viewer_rails/application_controller"

module PdfViewerRails
  class PdfWorkerController < ApplicationController

    def show
      set_headers
      respond_to do |format|
        format.js do
          send_file(
            worker_path,
            type: 'text/javascript',
            disposition: 'inline'
          )
        end
      end
    end

    private

    def worker_path
      @path ||=
        PdfViewerRails::Engine.root.join(
          'vendor',
          'assets',
          'javascripts',
          'worker.js'
        )
    end

    def worker_last_modified
      @last_modified ||= File.mtime(worker_path)
    end

    def set_headers
      response.headers['Cache-Control'] = 'public'
      response.headers['Last-Modified'] = worker_last_modified
    end
  end
end
