Shoes.app {
	background rgb(255,255,255) .. rgb(100,255,255)
	border("#BE8", strokewidth: 6)

	def color
		rgb((100..250).rand,(100..250).rand,(100..250).rand,(0..250).rand) .. rgb((100..250).rand,(100..250).rand,                                  (100..250).rand,(0..250).rand)
	end

    @change_back = button "Change background and border color!"
    @change_back.click { 
      background color
      border color, strokewidth: 12
    } 


  	@circle = button "Add some circles!"
  	@circle.click { 
  	 
       fill color
       stroke color
       {strokewidth: 12}
       gravity = 0.05
       velocity = 0.0
       ball_radius = 60
       ball = oval(top: 10, 
              left: (-5..self.width).rand,
              radius: ball_radius)

       if ball.left > width - ball_radius*2
          ball.left = width/2
        end
        
  drop_ball = button "Drop!" 
  drop_ball.click do
    animate(60) do
      velocity += gravity
      ball.top += velocity
      if ball.top > height - ball_radius * 2
        ball.top = height - ball_radius * 2
        velocity = velocity * -0.5
    end
    end
  end

      }

     
    
 
}