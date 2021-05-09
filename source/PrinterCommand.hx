class PrinterCommand
{
    public var linear:Float;
    public var add:Float;
    public var sleep:Float;
    public var doSleep:Bool;
    
    public function new(linear:Float, add:Float, ?sleep:Float = 0, ?doSleep:Bool = false)
    {
        this.linear = linear;
        this.add = add;
        this.sleep = sleep;
        this.doSleep = doSleep;
    }
}
