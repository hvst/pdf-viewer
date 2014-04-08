PdfViewerRails::Engine.routes.draw do
  root :to => 'pdf_viewer#show'
  get 'pdf.worker', to: 'pdf_worker#show', as: 'pdf_worker'
end
