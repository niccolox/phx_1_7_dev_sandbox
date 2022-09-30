#   Fly.io
export FLYCTL_INSTALL="/home/niccolox/.fly"
  export PATH="$FLYCTL_INSTALL/bin:$PATH"


<h2>Card Static</h2>
<PhoenixComponentsDaisy.Card.static />

<h2>Card Dynamic</h2>
<PhoenixComponentsDaisy.Card.dynamic 
card_image_url="https://placeimg.com/400/225/arch" 
card_image_alt="Shoes" 
card_title="Shoes!" 
card_body="If a dog chews shoes whose shoes does he choose?"
card_action="Buy Now"
 />



# Phx17DevSandbox

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.setup`
  * Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix
