class HARViewer
  class << self
    def start
      server.join
    end

    def port
      9292
    end

    def pathname
      Pathname.new(__FILE__).dirname + "../public"
    end

    def server
     Thread.new do
        server = WEBrick::HTTPServer.new(
          :Port         => port,
          :DocumentRoot => pathname
        )

        [:INT, :TERM].each do |signal|
          trap(signal) { server.shutdown }
        end

        server.start
      end
    end
  end # self
end # HARViewer
