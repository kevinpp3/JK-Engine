package;

// shoutout to Jay's dog Fuzzy
class FuzzyBool
{
    private var fBool:Float;

    public function new(?fBool:Float = 0.0)
    {
        this.fBool = fBool;
    }

    public function absolutelyTrue():Bool
    {
        return fBool >= 1.0;
    }

    public function absolutelyFalse():Bool
    {
        return fBool <= 0.0;
    }

    public function somewhatTrue():Bool
    {
        return fBool > 0.0;
    }

    public function somewhatFalse():Bool
    {
        return fBool < 1.0;
    }

    public function getfBool():Float
    {
        return fBool;
    }

    public function setfBool(amount:Float):Void
    {
        fBool = amount;
    }

    public function addTofBool(amount:Float):Void
    {
        if(fBool < 0)
            fBool = amount;
        else
            fBool += amount;
    }

    public function subFromfBool(amount:Float):Void
    {
        if(fBool > 1)
            fBool = 1.0 - amount;
        else 
            fBool -= amount;
    }
}