class Server
  def initialize
    @greetings = ["Hello", "Guten Tag", "Bienvenido", "Howdy!"]
  end
  def call(env)
    [200, {}, [@greetings.sample+"\n"]]
  end
end
