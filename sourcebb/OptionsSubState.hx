package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.group.FlxGroup.FlxTypedGroup;
import flixel.text.FlxText;
import flixel.util.FlxColor;

class OptionsSubState extends MusicBeatSubstate
{
	var textMenuItems:Array<String> = 
	['Downscroll', 'DFJK Scheme'];
	var checkbox:FlxSprite = new FlxSprite(0, 45);
	var checkbox2:FlxSprite = new FlxSprite(0, 245);
	var selector:FlxSprite;
	var curSelected:Int = 0;

	var grpOptionsTexts:FlxTypedGroup<FlxText>;

	public function new()
	{
		super();
		var bg:FlxSprite = new FlxSprite().loadGraphic(Paths.image('menuBGBlue'));
		bg.scale.set(1, 1);
		add(bg);
		checkbox.screenCenter(X);
		checkbox.x += 80;
		checkbox.frames = Paths.getSparrowAtlas('optionsCheck');
		checkbox.animation.addByPrefix('empty', 'Empty Checkbox', 24, false);
		checkbox.animation.addByPrefix('check', 'Checkmark', 24, false);
		checkbox.scale.set(0.35, 0.35);
		add(checkbox);

		checkbox2.screenCenter(X);
		checkbox2.x += 80;
		checkbox2.frames = Paths.getSparrowAtlas('optionsCheck');
		checkbox2.animation.addByPrefix('empty', 'Empty Checkbox', 24, false);
		checkbox2.animation.addByPrefix('check', 'Checkmark', 24, false);
		checkbox2.scale.set(0.35, 0.35);
		add(checkbox2);
		if (Options.downscroll == true)
			{
				checkbox.animation.play('check', true);
			}
		else
			checkbox.animation.play('empty', true);

		if (Options.dfjk == true)
			{
				checkbox2.animation.play('check', true);
			}
		else
			checkbox2.animation.play('empty', true);
		grpOptionsTexts = new FlxTypedGroup<FlxText>();
		add(grpOptionsTexts);

		selector = new FlxSprite().makeGraphic(5, 5, FlxColor.RED);
		add(selector);

		for (i in 0...textMenuItems.length)
		{
			var optionText:FlxText = new FlxText(20, 100 + (i * 200), 0, textMenuItems[i], 32);
			optionText.ID = i;
			optionText.screenCenter(X);
			grpOptionsTexts.add(optionText);
		}
	}

	override function update(elapsed:Float)
	{
		super.update(elapsed);

		if (controls.UP_P)
			curSelected -= 1;
			//FlxG.sound.play(Paths.sound('scrollMenu'));

		if (controls.DOWN_P)
			curSelected += 1;
			//FlxG.sound.play(Paths.sound('scrollMenu'));

		if (curSelected < 0)
			curSelected = textMenuItems.length - 1;

		if (curSelected >= textMenuItems.length)
			curSelected = 0;

		grpOptionsTexts.forEach(function(txt:FlxText)
		{
			txt.color = FlxColor.WHITE;

			if (txt.ID == curSelected)
				txt.color = FlxColor.YELLOW;
		});

		if (controls.ACCEPT)
		{
			switch (textMenuItems[curSelected])
			{
				case "DFJK Scheme":
					if (Options.dfjk == false)
						{
							Options.dfjk = true;
							checkbox2.animation.play('check', true);
							PlayerSettings.reset();
							PlayerSettings.init();
						}
					else if (Options.dfjk == true)
						{
							Options.dfjk = false;
							checkbox2.animation.play('empty', true);
							PlayerSettings.reset();
							PlayerSettings.init();
						}
				case "Downscroll":
					if (Options.downscroll == false)
						{
							Options.downscroll = true;
							checkbox.animation.play('check', true);
						}
					else if (Options.downscroll == true)
						{
							Options.downscroll = false;
							checkbox.animation.play('empty', true);
						}
					
			}
		}
		if (controls.BACK)
			{
				FlxG.switchState(new MainMenuState());
			}
	}
}
