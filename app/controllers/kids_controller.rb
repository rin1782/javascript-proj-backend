class KidsController < ApplicationController

    def index
        render(json: Kid.all)
    end

end
