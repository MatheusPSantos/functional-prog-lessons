defmodule HelloWeb.Router do
  use HelloWeb, :router

  pipeline :browser do
    plug :accepts, ["html", "text"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
    plug HelloWeb.Plugs.Locale, "en"
  end

  pipeline :review_checks do
    plug :browser
    # plug :ensure_authentication_user
    # plug :ensure_user_owns_review
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", HelloWeb do
    pipe_through :browser

    get "/", PageController, :index
    # get "/", PageController, :test
    get "/hello", HelloController, :index
    # get "/hello/:messenger", PageController, :show
    get "/hello/:messenger", HelloController, :show
    resources "/users", UserController do
      resources "/posts", PostController
    end
    #resources "/post", PosController, only: [:index, :show]
    resources "/comments", CommentController, except: [:delete]
    resources "/reviews", ReviewController
  end

  scope "/admin", HelloWeb.Admin, as: :admin do
    pipe_through :browser
    resources "/reviews", ReviewController
  end

  scope "/api", HelloWeb.Api, as: :api do
    pipe_through :browser
    scope "/v1", V1, as: :v1 do
      resources "/images", ImageController
      resources "/users", UserController
    end
  end

  scope "/reviews" do
    pipe_through [:review_checks]
    resources "/", HelloWeb.ReviewController
    forward "/jobs", BackgrounfJob.Plug
  end

  # Other scopes may use custom stacks.
  # scope "/api", HelloWeb do
  #   pipe_through :api
  # end

  # Enables LiveDashboard only for development
  #
  # If you want to use the LiveDashboard in production, you should put
  # it behind authentication and allow only admins to access it.
  # If your application does not have an admins-only section yet,
  # you can use Plug.BasicAuth to set up some basic authentication
  # as long as you are also using SSL (which you should anyway).
  if Mix.env() in [:dev, :test] do
    import Phoenix.LiveDashboard.Router

    scope "/" do
      pipe_through :browser
      live_dashboard "/dashboard", metrics: HelloWeb.Telemetry
    end
  end
end
