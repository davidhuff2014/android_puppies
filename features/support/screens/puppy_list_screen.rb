class PuppyListScreen
  include Gametel

  activity 'PuppiesActivity'

  list_item(:sparky, text: 'Sparky')
  list_item(:ruby_sue, text: 'Ruby Sue')
  list_item(:maggie_mae, text: 'Maggie Mae')
  list_item(:brook, text: 'Brook')
  list_item(:spud, text: 'Spud')
  list_item(:tipsy, text: 'Tipsy')

  def view_for(name)
    # self.send "#{ name.downcase.gsub(' ', '_') }_view"
    self.send "#{ method_for(name) }_view"
  end

  def details_for(name)
    # self.send name.downcase.gsub(' ', '_')
    self.send method_for(name)
  end

  private

  def method_for(name)
    name.downcase.gsub(' ', '_')
  end
end