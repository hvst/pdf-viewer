PdfViewerRails::Engine.routes.draw do
  match '/' => 'pdf_viewer#show'
end
