module Skeletor
  module App
    def self.run
      Fox::FXApp.new do |app|
        Window.new(app)
        app.create
        app.run
      end
    end
  end
end
