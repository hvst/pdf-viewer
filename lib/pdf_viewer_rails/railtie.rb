module PdfViewerRails
  class Railtie < Rails::Railtie
    initializer "pdf assets initialization" do
      puts "adding custom assets"
      Rails.application.config.assets.precompile += %w(
        pdf_viewer_rails/application.js.erb
        pdf_viewer_rails/pdf.worker.js
        pdf_viewer_rails/viewer.css
      )
    end
  end
end
