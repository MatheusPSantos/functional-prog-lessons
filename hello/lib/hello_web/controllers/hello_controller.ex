defmodule HelloWeb.HelloController do
    use HelloWeb, :controller
    def index(conn, _params) do
        render(conn, "index.html")
    end

    def show(conn, %{"messenger" => messenger}) do
        # render(conn, "show.html", messenger: messenger)
        conn
        |> Plug.Conn.assign(:messenger, messenger)
        |> render("show.html")
    end
end
