class Application

  def call(env)
    resp = Rack::Response.new
    num1 = get_random
    num2 = get_random
    num3 = get_random
    resp.write "#{num1} #{num2} #{num3}"
    resp.write "\n"
    message = win?(num1, num2, num3) ? "You win" : "You lose"
	resp.write message
    resp.finish
  end

  def win?(num1, num2, num3)
  	num1 == num2 && num2 == num3
  end

  def get_random
  	Kernel.rand(1..20)
  end

end
