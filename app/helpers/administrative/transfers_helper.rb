module Administrative::TransfersHelper
  OptionsForCategories = Struct.new(:id, :description)
  
  def options_for_categories
    options = []
    Transfer.categories_i18n.map do |key, value|
      options.push(OptionsForCategories.new(key,value))
    end
    options
  end
end
