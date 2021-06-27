package;

import js.html.PlaybackDirection;
import io.newgrounds.objects.Medal.Difficulty;
import flixel.FlxG;
import flixel.FlxObject;
import flixel.FlxSubState;
import flixel.math.FlxPoint;
import flixel.util.FlxColor;
import flixel.util.FlxTimer;

class GameOverSubstate extends MusicBeatSubstate
{
	var weekData:Array<Dynamic> = [
		['Tutorial'],
		['Bopeebo', 'Fresh', 'Dadbattle'],
		['Spookeez', 'South', "Monster"],
		['Pico', 'Philly', "Blammed"],
		['Satin-Panties', "High", "Milf"],
		['Cocoa', 'Eggnog', 'Winter Horrorland'],
		['Senpai', 'Roses', 'Thorns'],
		['Familial-Bonds', 'Always-Here', 'Memories', 'Heartache', 'heartacheend']
	];
	var bf:Boyfriend;
	var camFollow:FlxObject;

	var stageSuffix:String = "";

	public function new(x:Float, y:Float)
	{
		var daStage = PlayState.curStage;
		var daBf:String = '';
		switch (daStage)
		{
			case 'school':
				stageSuffix = '-pixel';
				daBf = 'bf-pixel-dead';
			case 'schoolEvil':
				stageSuffix = '-pixel';
				daBf = 'bf-pixel-dead';
			default:
				daBf = 'bf';
			case 'always-here':
				daBf = 'bf-bb-dead';
		}

		super();

		Conductor.songPosition = 0;

		bf = new Boyfriend(x, y, daBf);
		add(bf);

		camFollow = new FlxObject(bf.getGraphicMidpoint().x, bf.getGraphicMidpoint().y, 1, 1);
		FlxG.camera.zoom = 0.6;
		add(camFollow);

		FlxG.sound.play(Paths.sound('fnf_loss_sfx' + stageSuffix));
		Conductor.changeBPM(100);

		// FlxG.camera.followLerp = 1;
		// FlxG.camera.focusOn(FlxPoint.get(FlxG.width / 2, FlxG.height / 2));
		FlxG.camera.scroll.set();
		FlxG.camera.target = null;

		bf.playAnim('firstDeath');
	}

	override function update(elapsed:Float)
	{
		super.update(elapsed);

		if (controls.ACCEPT)
		{
			endBullshit();
		}

		if (controls.BACK)
		{
			FlxG.sound.music.stop();

			if (PlayState.isStoryMode)
				FlxG.switchState(new StoryMenuState());
			else
				FlxG.switchState(new FreeplayState());
		}

		if (bf.animation.curAnim.name == 'firstDeath' && bf.animation.curAnim.curFrame == 12)
		{
			FlxG.camera.follow(camFollow, LOCKON, 0.01);
		}

		if (bf.animation.curAnim.name == 'firstDeath' && bf.animation.curAnim.finished)
		{
			if (bf.curCharacter == 'bf-bb-dead')
			{
				if (FlxG.random.bool(66))
				{
					FlxG.sound.play(Paths.soundRandom('bbLines/bbDead/', 1, 7));
				}
			}
			else if (bf.curCharacter == 'bf' && PlayState.curStage == 'prologue')
			{
				if (FlxG.random.bool(66))
				{
					FlxG.sound.play(Paths.soundRandom('bbLines/bbInsults/', 1, 9));
				}
			}
			FlxG.sound.playMusic(Paths.music('gameOver' + stageSuffix), 0.2);

		}

		if (FlxG.sound.music.playing)
		{
			Conductor.songPosition = FlxG.sound.music.time;
		}
	}

	override function beatHit()
	{
		super.beatHit();

		FlxG.log.add('beat');
	}

	var isEnding:Bool = false;

	function endBullshit():Void
	{
		if (!isEnding)
		{
			isEnding = true;
			bf.playAnim('deathConfirm', true);
			FlxG.sound.music.stop();
			FlxG.sound.play(Paths.music('gameOverEnd' + stageSuffix));
			new FlxTimer().start(0.7, function(tmr:FlxTimer)
			{
				FlxG.camera.fade(FlxColor.BLACK, 2, false, function()
				{
					if (PlayState.storyDifficulty == 3)
						{
							var diffic:String = '-fuck';
							var week:Int = 0;
							week = PlayState.storyWeek;
							var stringThing:Array<String> = weekData[week];
							PlayState.storyDifficulty = 3;

							PlayState.storyPlaylist = weekData[week];
							PlayState.SONG = Song.loadFromJson(PlayState.storyPlaylist[0].toLowerCase() + diffic, PlayState.storyPlaylist[0].toLowerCase());
							PlayState.campaignScore = 0;
							new FlxTimer().start(1, function(tmr:FlxTimer)
							{
								LoadingState.loadAndSwitchState(new PlayState(), true);
							});

						}
					LoadingState.loadAndSwitchState(new PlayState());
				});
			});
		}
	}
}
