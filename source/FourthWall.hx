package;

import flixel.FlxSprite;

class FourthWall
{
/*
sleep,2.7;
linear,0.2;
addy,-50;
linear,1.65;
addy,-50;
linear,0.2;
addy,-50;
linear,0.9;
addy,-50;
linear,0.23;
addy,-5;
linear,0.2;
addy,-20;
linear,0.3;
addy,-5;
linear,0.1;
addy,-20;
linear,1.1;
addy,-20;
linear,0.2;
addy,-10;
linear,0.3;
addy,-5;
linear,0.3;
addy,-30;
linear,0.3;
addy,-10;
linear,0.25;
addy,-20;
linear,0.05;
addy,-10;
sleep,0.03;
linear,0.05;
addy,-10;
sleep,0.03;
linear,0.05;
addy,-10;
sleep,0.03;
linear,0.5;
addy,-20;
linear,0.5;
addy,-10;
linear,0.25;
addy,-20;
linear,0.3;
addy,-5;
linear,0.3;
addy,-15;
linear,0.3;
addy,-5;
linear,0.2;
addy,-10;
linear,0.15;
addy,-3;
linear,0.3;
addy,-10;
linear,0.4;
addy,-7;
linear,0.4;
addy,-700
*/
    private var lessgo:Bool = false;
    public var sprite:FlxSprite;

	public function new()
	{
        sprite = new FlxSprite().loadGraphic(Paths.image('printer-fourthwall'));
	}

    public function update(elapsed:Float):Void
    {
        if(lessgo)
        {
            // code go here
        }
    }

    public function getSilly():Void
    {
        lessgo = true;
    }
}
