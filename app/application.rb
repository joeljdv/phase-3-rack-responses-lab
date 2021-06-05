class Application

    def call(time)
        
        resp = Rack::Response.new

        resp.write "#{Time.now}\n"
        
        if Time.now.hour < 12 
            resp.write 'Good Morning!'
        elsif Time.now.hour >= 12
            resp.write 'Good Afternoon!'
        end
        resp.finish
    end 
end