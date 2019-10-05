class Application
    def call(env)
        resp = Rack::Response.new
        
        # PULL THE HOUR FROM CURRENT TIME
        time = Time.now.hour

        # APPLY LOGIC TO HOUR
        time < 12 ? (resp.write "Good Morning!") : (resp.write "Good Afternoon!")

        resp.finish
    end
end