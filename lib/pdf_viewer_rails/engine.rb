module PdfViewerRails
  class Engine < ::Rails::Engine
    isolate_namespace PdfViewerRails

    initializer "pdf assets initialization", group: :all do |app|
      app.config.assets.precompile += %w(
        pdf_viewer_rails/application.js.erb
        pdf_viewer_rails/pdf.worker.js
        pdf_viewer_rails/viewer.css
      )
    end
  end
end
