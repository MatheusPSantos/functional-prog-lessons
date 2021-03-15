defmodule HelloWeb.PageController do
  use HelloWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def test(conn, _params) do
    render(conn, "index.html")
  end

  def show(conn, %{"messenger" => messenger}) do
    # text(conn, "From messenger #{messenger}")
    # json(conn, %{id: messenger})
    html(conn, """
      <html>
        <head>
          <title>Passing a Messenger</title>
        </head>
        <body>
          <p>From messenger #{Plug.HTML.html_escape(messenger)}</p>
        </body>
      </html>
    """)
  end
end
