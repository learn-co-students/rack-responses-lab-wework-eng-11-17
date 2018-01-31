class Application
  def call(env)
    resp = Rack::Response.new
    middle_of_day = Time.parse "12:00 pm"
    current_time = Time.now

    if current_time < middle_of_day
      resp.write "Good Morning"
    else
      resp.write "Good Afternoon"
    end

    resp.finish
  end

end
