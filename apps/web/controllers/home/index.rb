module Web::Controllers::Home
  class Index
    include Web::Action

    expose :greet

    def call(params)
      @greet = "Hello, again"
      @foo = "bar"
    end
  end
end
