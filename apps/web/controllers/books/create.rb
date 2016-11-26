module Web::Controllers::Books
  class Create
    include Web::Action

    params do
      required(:book).schema do
        required(:title).value(:str?, format?: /\AHello/)
      end
    end

    def call(params)
      if params.valid?
        BookRepository.new.create(params[:book])
        redirect_to routes.root_url
      end
    end
  end
end
