package;

import flixel.FlxSprite;
import flixel.FlxSubState;
import flixel.FlxG;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import lime.app.Application;
class ControlsSubState extends MusicBeatSubstate
{
	override function create()
	{
		super.create();
		var bg:FlxSprite = new FlxSprite().loadGraphic(Paths.image('menuBGBlue'));
		bg.scale.set(1.1, 1.1);
		add(bg);
	}
	override function update(elapsed:Float)
		{
			super.update(elapsed);
			if (controls.BACK)
				{
					FlxG.switchState(new OptionsMenu());
				}
		}
}
