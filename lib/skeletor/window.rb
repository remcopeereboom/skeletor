module Skeletor
  class Window < Fox::FXMainWindow
    def initialize(app)
      icon = File.open('media/skull_and_bones.bmp') do |f|
        Fox::FXBMPIcon.new(app, f.read)
      end

      super(app, 'Skeletor', icon: icon, width: 640, height: 480)

      Fox::FXLabel.new(self,
                       'This is a skeleton application!',
                       nil,
                       Fox::LAYOUT_FILL_X | Fox::LAYOUT_FILL_Y)
    end

    def create
      super
      show Fox::PLACEMENT_SCREEN
    end
  end
end
