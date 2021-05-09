package;

import haxe.Exception;
import flixel.FlxG;
import flixel.FlxSprite;

class PrintingError
{
    private var start:Bool = false;

    private var totalElapsed:Float = 0.0;
    private var stopSleepTime:Float = 31.822;
    private var shakeElapsed:Float = 0.0;
    private var endTime:Float = 34.447;

    public var sprite:FlxSprite;

	public function new()
	{
        sprite = new FlxSprite().loadGraphic(Paths.image('printer-error'));
        sprite.x = 484;
        sprite.y = 332;
        sprite.alpha = 0;
	}

    public function update(elapsed:Float):Void
    {
        if(start)
        {
            totalElapsed += elapsed;
            shakeElapsed += elapsed;
            if(totalElapsed > stopSleepTime && !done())
            {
                sprite.alpha = 1;
                if(shakeElapsed > (1.0 / 15.0))
                {
                    sprite.x = 484 + 100 * (FlxG.random.float() * 2 - 1);
                    sprite.y = 332 + 100 * (FlxG.random.float() * 2 - 1);
                    shakeElapsed = 0.0;
                }
            }
            if(done())
            {
                sprite.alpha = 0;
                start = false;
            }
        }
    }

    public function startDelta():Float
    {
        return totalElapsed - stopSleepTime;
    }

    public function maxDelta():Float
    {
        return endTime - stopSleepTime;
    }

    public function working():Bool
    {
        return totalElapsed > stopSleepTime && !done();
    }

    public function done():Bool
    {
        return totalElapsed > endTime;
    }

    public function getSilly():Void
    {
        start = true;
    }
}
