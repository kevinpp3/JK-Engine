class PrinterCommand
{
    public var linear:Float;
    public var add:Float;
    public var sleep:Float;
    public var doSleep:Bool;
    public var addIsGoal:Bool;
    public var customMessage:String;
    
    public function new(linear:Float, add:Float, ?sleep:Float = 0, ?doSleep:Bool = false, ?addIsGoal:Bool = false, ?customMessage:String = "")
    {
        this.linear = linear;
        this.add = add;
        this.sleep = sleep;
        this.doSleep = doSleep;
        this.addIsGoal = addIsGoal;
        this.customMessage = customMessage;
    }
}
