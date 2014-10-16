module PdfViewerRails
  class Engine < ::Rails::Engine
    isolate_namespace PdfViewerRails

    initializer "pdf assets initialization", group: :all do |app|
      app.config.assets.precompile += %w(
        pdf_viewer_rails/application.js
        pdf_viewer_rails/viewer.css
        pdf_viewer_rails/viewer_customizations.css
      )
    end

    initializer "static assets" do |app|
      app.middleware.use ::ActionDispatch::Static, "#{root}/public/"
    end
  end
end
