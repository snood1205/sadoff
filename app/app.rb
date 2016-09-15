module Sadoff
  class App < Padrino::Application
    register ScssInitializer
    use ConnectionPoolManagement
    register Padrino::Mailer
    register Padrino::Helpers

    enable :sessions

    get '/' do
      'Hello world!'
    end

    get :about, map: '/about_us' do
      render :haml, '%p This is sadoff.us'
    end
  end
end
