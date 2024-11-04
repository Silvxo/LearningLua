_G.love = require("love")

-- Basicamente o startup
function love.load()
    --love.graphics.setBackgroundColor(1/255, 52/255, 42/255)

    _G.ball = {}
    ball.x = 50
    ball.y = 50
    ball.radius = 100
    ball.destroy = false

    _G.ballDestroyer = {}
    ballDestroyer.x = 600
end

-- Verifica Inputs dos controles e atualiza valores
function love.update(dt)


    if(love.keyboard.isDown("a")) then
        ball.x = ball.x - 3
    elseif (love.keyboard.isDown("d")) then
        ball.x = ball.x + 3
    end

    if(love.keyboard.isDown("w")) then
        ball.y = ball.y - 3
    elseif (love.keyboard.isDown("s")) then
        ball.y = ball.y + 3
    end

    if(ball.x >= ballDestroyer.x) then
        ball.destroy = true
    end
    
end

-- Printa tudo na tela
function love.draw()
    love.graphics.setColor(255/255, 225/255, 225/255)
    love.graphics.circle("fill", ball.x, ball.y, ball.radius)
    love.graphics.rectangle("fill", ballDestroyer.x, 0, 200, 100)
    if(ball.destroy == true) then 
        love.graphics.print("ITS OVER GUYS", 1000, 800)
    end
end
