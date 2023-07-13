require 'sinatra'

get('/') do
  erb :index
end

get '/square/new' do
  erb :square_form
end

post '/square' do
  number = params[:number].to_f
  square = number**2
  "Square of #{number}: #{square}"
end

get '/square_root/new' do
  erb :square_root_form
end

post '/square_root' do
  number = params[:number].to_f
  square_root = Math.sqrt(number)
  "Square root of #{number}: #{square_root}"
end

get '/payment/new' do
  erb :payment_form
end

post '/payment' do
  # Payment calculation logic
end

get '/random/new' do
  erb :random_form
end

post '/random' do
  # Random number generation logic
end

__END__

@@index
<h1>Welcome to your Sinatra App!</h1>
<p>Define some routes in app.rb</p>

@@square_form
<form action="/square" method="post">
  <label for="number">Enter a number:</label>
  <input type="text" id="number" name="number">
  <button type="submit">Calculate Square</button>
</form>

@@square_root_form
<form action="/square_root" method="post">
  <label for="number">Enter a number:</label>
  <input type="text" id="number" name="number">
  <button type="submit">Calculate Square Root</button>
</form>

@@payment_form
<form action="/payment" method="post">
  <div>
    <label for="apr">APR (annual percentage rate):</label>
    <input type="text" id="apr" name="apr">
  </div>
  <div>
    <label for="years">Number of years remaining:</label>
    <input type="text" id="years" name="years">
  </div>
  <div>
    <label for="present_value">Present value:</label>
    <input type="text" id="present_value" name="present_value">
  </div>
  <button type="submit">Calculate Monthly Payment</button>
</form>

@@random_form
<form action="/random" method="post">
  <div>
    <label for="min">Minimum:</label>
    <input type="text" id="min" name="min">
  </div>
  <div>
    <label for="max">Maximum:</label>
    <input type="text" id="max" name="max">
  </div>
  <button type="submit">Pick random number</button>
</form>
