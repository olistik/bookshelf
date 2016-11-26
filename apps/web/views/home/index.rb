module Web::Views::Home
  class Index
    include Web::View

    def greet
      locals[:greet].upcase
    end

    def say_hi
      greet.downcase
    end
  end
end
