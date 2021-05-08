package;

import flixel.FlxSprite;

class PrinterCommand
{
    public var linear:Float;
    public var addY:Float;
    public var sleep:Float;
    public var doSleep:Bool;
    
    public function new(linear:Float, addY:Float, ?sleep:Float = 0, ?doSleep:Bool = false)
    {
        this.linear = linear;
        this.addY = addY;
        this.sleep = sleep;
        this.doSleep = doSleep;
    }
}

class FourthWall
{
    private var commands:Array<PrinterCommand> = [];
    private var i:Int = -1;

    private var goOn:Bool = false;
    private var hasEverStarted:Bool = false;

    private var totalElapsed:Float = 0.0;
    private var stopSleepTime:Float = -1.0;
    private var goalY:Float = 2419;
    private var currentVelocity:Float = 0.0;

    public var sprite:FlxSprite;

	public function new()
	{
        sprite = new FlxSprite().loadGraphic(Paths.image('printer-fourthwall'));

        // haha hardcode time
        commands.push(new PrinterCommand(0.2, -50, 4.1, true));
        commands.push(new PrinterCommand(1.65, -50));
        commands.push(new PrinterCommand(0.2, -50));
        commands.push(new PrinterCommand(0.9, -50));
        commands.push(new PrinterCommand(0.23, -5));
        commands.push(new PrinterCommand(0.2, -20));
        commands.push(new PrinterCommand(0.3, -5));
        commands.push(new PrinterCommand(0.1, -20));
        commands.push(new PrinterCommand(1.1, -20));
        commands.push(new PrinterCommand(0.2, -10));
        commands.push(new PrinterCommand(0.3, -5));
        commands.push(new PrinterCommand(0.3, -30));
        commands.push(new PrinterCommand(0.3, -10));
        commands.push(new PrinterCommand(0.25, -10));
        commands.push(new PrinterCommand(0.05, -10, 0.03, true));
        commands.push(new PrinterCommand(0.05, -10, 0.03, true));
        commands.push(new PrinterCommand(0.5, -20));
        commands.push(new PrinterCommand(0.5, -10));
        commands.push(new PrinterCommand(0.25, -20));
        commands.push(new PrinterCommand(0.3, -5));
        commands.push(new PrinterCommand(0.3, -15));
        commands.push(new PrinterCommand(0.3, -5));
        commands.push(new PrinterCommand(0.2, -10));
        commands.push(new PrinterCommand(0.15, -3));
        commands.push(new PrinterCommand(0.3, -10));
        commands.push(new PrinterCommand(0.4, -7));
        commands.push(new PrinterCommand(400, -700000));
	}

    public function update(elapsed:Float):Void
    {
        if(hasEverStarted)
        {
            totalElapsed += elapsed;
            if(totalElapsed < stopSleepTime)
                goOn = false;
            else
                goOn = true;
        }
        if(goOn)
        {
            if(!goalYReached())
                sprite.y += currentVelocity * elapsed;
            if(goalYReached())
            {
                i++;
                trace('new i value:');
                trace(i);
                if(i < commands.length)
                {
                    runCommand(commands[i]);
                }
                else
                {
                    hasEverStarted = false;
                    goOn = false;
                }
            }
        }
    }

    public function getSilly():Void
    {
        goOn = true;
        hasEverStarted = true;
    }

    private function runCommand(command:PrinterCommand):Void 
    {
        currentVelocity = command.addY / command.linear;
        goalY = sprite.y + command.addY;
        if(command.doSleep)
            stopSleepTime = totalElapsed + command.sleep;
    }

    private function goalYReached():Bool
    {
        return sprite.y < goalY;
    }

    public function offScreen():Bool
    {
        return sprite.y <= -2148;
    }

    public function goingOffScreen():Bool
    {
        return sprite.y < 0;
    }
}
