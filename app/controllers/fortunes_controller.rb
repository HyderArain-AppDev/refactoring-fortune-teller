class FortunesController < ApplicationController
  def horoscopes

    @zodiac = params.fetch("the_sign")
    @zodiac_sym = @zodiac.to_sym
    all_zodiacs = Zodiac.list
    this_zodiac = all_zodiacs.fetch(@zodiac_sym)
    @horoscope = this_zodiac.fetch(:horoscope)
    
    @array_of_numbers = Array.new

    5.times do
      another_number = rand(1...100)
      
      @array_of_numbers.push(another_number)
    end

  render({ :template => "fortunes_templates/fortunes.html.erb" })
  end
end