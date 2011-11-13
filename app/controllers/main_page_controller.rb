class MainPageController < ApplicationController
    def index
      render :action=>'index'  # Render a template from the say_hello action method
  end
end
