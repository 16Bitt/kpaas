module KubectlProxyDaemon
  class Spawner
    attr_reader :pid

    def start
      @pid = fork { exec '/bin/kubectl proxy' }
    end

    def detach
      raise InvalidPidError if @pid.nil?

      Process.detach(@pid)
    end

    class << self
      def run
        instance = new
        instance.start
        instance.detach
      end
    end
  end
end