  class Application

    def call(env) #what does the argument #env do for the call method?
        resp = Rack::Response.new

        time = Time.now

        if time.hour >= 12
            resp.write "Good Afternoon!"
        else 
            resp.write "Good morning!"
        end
        resp.finish
    end

end

        