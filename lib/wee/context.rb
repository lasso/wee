class Wee::Context
  attr_accessor :application
  attr_accessor :request, :response, :session, :session_id
  attr_accessor :page_id, :handler_id
  attr_accessor :callbacks

  def initialize(request, response, session, session_id)
    @request, @response, @session, @session_id, @root = request, response, session, session_id
  end
end

class Wee::RenderingContext < Struct.new(:callbacks, :document); end
