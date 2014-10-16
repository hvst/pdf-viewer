module PdfViewerRails
  class PdfViewerController < ApplicationController
    layout false

    def show
    end

    def shareable?
      params[:shareable] == "true"
    end
    helper_method :shareable?
  end
end
