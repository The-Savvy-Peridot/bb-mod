package;


import haxe.io.Bytes;
import lime.utils.AssetBundle;
import lime.utils.AssetLibrary;
import lime.utils.AssetManifest;
import lime.utils.Assets;

#if sys
import sys.FileSystem;
#end

@:access(lime.utils.Assets)


@:keep @:dox(hide) class ManifestResources {


	public static var preloadLibraries:Array<AssetLibrary>;
	public static var preloadLibraryNames:Array<String>;
	public static var rootPath:String;


	public static function init (config:Dynamic):Void {

		preloadLibraries = new Array ();
		preloadLibraryNames = new Array ();

		rootPath = null;

		if (config != null && Reflect.hasField (config, "rootPath")) {

			rootPath = Reflect.field (config, "rootPath");

		}

		if (rootPath == null) {

			#if (ios || tvos || emscripten)
			rootPath = "assets/";
			#elseif android
			rootPath = "";
			#elseif console
			rootPath = lime.system.System.applicationDirectory;
			#else
			rootPath = "./";
			#end

		}

		#if (openfl && !flash && !display)
		openfl.text.Font.registerFont (__ASSET__OPENFL__assets_fonts_beatstreet_ttf);
		openfl.text.Font.registerFont (__ASSET__OPENFL__assets_fonts_fridayfunkin_regular_otf);
		openfl.text.Font.registerFont (__ASSET__OPENFL__assets_fonts_fridayfunkin_regular_ttf);
		openfl.text.Font.registerFont (__ASSET__OPENFL__assets_fonts_pixel_otf);
		openfl.text.Font.registerFont (__ASSET__OPENFL__assets_fonts_vcr_ttf);
		openfl.text.Font.registerFont (__ASSET__OPENFL__flixel_fonts_nokiafc22_ttf);
		openfl.text.Font.registerFont (__ASSET__OPENFL__flixel_fonts_monsterrat_ttf);
		
		#end

		var data, manifest, library, bundle;

		#if kha

		null
		library = AssetLibrary.fromManifest (manifest);
		Assets.registerLibrary ("null", library);

		if (library != null) preloadLibraries.push (library);
		else preloadLibraryNames.push ("null");

		#else

		Assets.libraryPaths["songs"] = rootPath + "manifest/songs.json";
		Assets.libraryPaths["shared"] = rootPath + "manifest/shared.json";
		Assets.libraryPaths["tutorial"] = rootPath + "manifest/tutorial.json";
		Assets.libraryPaths["week1"] = rootPath + "manifest/week1.json";
		Assets.libraryPaths["week2"] = rootPath + "manifest/week2.json";
		Assets.libraryPaths["week3"] = rootPath + "manifest/week3.json";
		Assets.libraryPaths["week4"] = rootPath + "manifest/week4.json";
		Assets.libraryPaths["week5"] = rootPath + "manifest/week5.json";
		Assets.libraryPaths["week6"] = rootPath + "manifest/week6.json";
		Assets.libraryPaths["week7"] = rootPath + "manifest/week7.json";
		data = '{"name":null,"assets":"aoy4:pathy51:assets%2Fdata%2Falways-here%2Falways-here-easy.jsony4:sizei18671y4:typey4:TEXTy2:idR1y7:preloadtgoR0y55:assets%2Fdata%2Falways-here%2Falways-here-hard-old.jsonR2i18671R3R4R5R7R6tgoR0y51:assets%2Fdata%2Falways-here%2Falways-here-hard.jsonR2i18889R3R4R5R8R6tgoR0y46:assets%2Fdata%2Falways-here%2Falways-here.jsonR2i18671R3R4R5R9R6tgoR0y53:assets%2Fdata%2Falways-here%2Falways-hereDialogue.txtR2i1044R3R4R5R10R6tgoR0y43:assets%2Fdata%2Fblammed%2Fblammed-easy.jsonR2i26016R3R4R5R11R6tgoR0y43:assets%2Fdata%2Fblammed%2Fblammed-hard.jsonR2i35763R3R4R5R12R6tgoR0y38:assets%2Fdata%2Fblammed%2Fblammed.jsonR2i29758R3R4R5R13R6tgoR0y43:assets%2Fdata%2Fbopeebo%2Fbopeebo-easy.jsonR2i4373R3R4R5R14R6tgoR0y43:assets%2Fdata%2Fbopeebo%2Fbopeebo-hard.jsonR2i4375R3R4R5R15R6tgoR0y38:assets%2Fdata%2Fbopeebo%2Fbopeebo.jsonR2i4373R3R4R5R16R6tgoR0y33:assets%2Fdata%2FcharacterList.txtR2i194R3R4R5R17R6tgoR0y39:assets%2Fdata%2Fcocoa%2Fcocoa-easy.jsonR2i18245R3R4R5R18R6tgoR0y39:assets%2Fdata%2Fcocoa%2Fcocoa-hard.jsonR2i22841R3R4R5R19R6tgoR0y34:assets%2Fdata%2Fcocoa%2Fcocoa.jsonR2i20141R3R4R5R20R6tgoR0y28:assets%2Fdata%2Fcontrols.txtR2i355R3R4R5R21R6tgoR0y47:assets%2Fdata%2Fdadbattle%2Fdadbattle-easy.jsonR2i18768R3R4R5R22R6tgoR0y47:assets%2Fdata%2Fdadbattle%2Fdadbattle-hard.jsonR2i23296R3R4R5R23R6tgoR0y42:assets%2Fdata%2Fdadbattle%2Fdadbattle.jsonR2i20149R3R4R5R24R6tgoR0y34:assets%2Fdata%2Fdata-goes-here.txtR2zR3R4R5R25R6tgoR0y41:assets%2Fdata%2Feggnog%2Feggnog-easy.jsonR2i21848R3R4R5R26R6tgoR0y41:assets%2Fdata%2Feggnog%2Feggnog-hard.jsonR2i146888R3R4R5R27R6tgoR0y36:assets%2Fdata%2Feggnog%2Feggnog.jsonR2i23782R3R4R5R28R6tgoR0y57:assets%2Fdata%2Ffamilial-bonds%2Ffamilial-bonds-easy.jsonR2i21627R3R4R5R29R6tgoR0y57:assets%2Fdata%2Ffamilial-bonds%2Ffamilial-bonds-hard.jsonR2i21627R3R4R5R30R6tgoR0y52:assets%2Fdata%2Ffamilial-bonds%2Ffamilial-bonds.jsonR2i21627R3R4R5R31R6tgoR0y59:assets%2Fdata%2Ffamilial-bonds%2Ffamilial-bondsDialogue.txtR2i2042R3R4R5R32R6tgoR0y36:assets%2Fdata%2FfreeplaySonglist.txtR2i8R3R4R5R33R6tgoR0y39:assets%2Fdata%2Ffresh%2Ffresh-easy.jsonR2i11764R3R4R5R34R6tgoR0y39:assets%2Fdata%2Ffresh%2Ffresh-hard.jsonR2i12789R3R4R5R35R6tgoR0y34:assets%2Fdata%2Ffresh%2Ffresh.jsonR2i12560R3R4R5R36R6tgoR0y47:assets%2Fdata%2Fheartache%2Fheartache-easy.jsonR2i5754R3R4R5R37R6tgoR0y47:assets%2Fdata%2Fheartache%2Fheartache-hard.jsonR2i6350R3R4R5R38R6tgoR0y42:assets%2Fdata%2Fheartache%2Fheartache.jsonR2i5754R3R4R5R39R6tgoR0y49:assets%2Fdata%2Fheartache%2FheartacheDialogue.txtR2i1091R3R4R5R40R6tgoR0y53:assets%2Fdata%2Fheartacheend%2Fheartacheend-easy.jsonR2i5745R3R4R5R41R6tgoR0y53:assets%2Fdata%2Fheartacheend%2Fheartacheend-hard.jsonR2i6341R3R4R5R42R6tgoR0y48:assets%2Fdata%2Fheartacheend%2Fheartacheend.jsonR2i5745R3R4R5R43R6tgoR0y55:assets%2Fdata%2Fheartacheend%2FheartacheendDialogue.txtR2i2820R3R4R5R44R6tgoR0y37:assets%2Fdata%2Fhigh%2Fhigh-easy.jsonR2i22690R3R4R5R45R6tgoR0y37:assets%2Fdata%2Fhigh%2Fhigh-hard.jsonR2i26047R3R4R5R46R6tgoR0y32:assets%2Fdata%2Fhigh%2Fhigh.jsonR2i24257R3R4R5R47R6tgoR0y29:assets%2Fdata%2FintroText.txtR2i1301R3R4R5R48R6tgoR0y29:assets%2Fdata%2Fmain-view.xmlR2i125R3R4R5R49R6tgoR0y45:assets%2Fdata%2Fmemories%2Fmemories-easy.jsonR2i18998R3R4R5R50R6tgoR0y49:assets%2Fdata%2Fmemories%2Fmemories-hard-old.jsonR2i19000R3R4R5R51R6tgoR0y45:assets%2Fdata%2Fmemories%2Fmemories-hard.jsonR2i19656R3R4R5R52R6tgoR0y44:assets%2Fdata%2Fmemories%2Fmemories-old.jsonR2i18998R3R4R5R53R6tgoR0y40:assets%2Fdata%2Fmemories%2Fmemories.jsonR2i19048R3R4R5R54R6tgoR0y47:assets%2Fdata%2Fmemories%2FmemoriesDialogue.txtR2i1256R3R4R5R55R6tgoR0y37:assets%2Fdata%2Fmilf%2Fmilf-easy.jsonR2i44166R3R4R5R56R6tgoR0y37:assets%2Fdata%2Fmilf%2Fmilf-hard.jsonR2i52704R3R4R5R57R6tgoR0y32:assets%2Fdata%2Fmilf%2Fmilf.jsonR2i46976R3R4R5R58R6tgoR0y43:assets%2Fdata%2Fmonster%2Fmonster-easy.jsonR2i11977R3R4R5R59R6tgoR0y43:assets%2Fdata%2Fmonster%2Fmonster-hard.jsonR2i13965R3R4R5R60R6tgoR0y38:assets%2Fdata%2Fmonster%2Fmonster.jsonR2i13247R3R4R5R61R6tgoR0y41:assets%2Fdata%2Fphilly%2Fphilly-easy.jsonR2i25122R3R4R5R62R6tgoR0y41:assets%2Fdata%2Fphilly%2Fphilly-hard.jsonR2i37051R3R4R5R63R6tgoR0y36:assets%2Fdata%2Fphilly%2Fphilly.jsonR2i29479R3R4R5R64R6tgoR0y37:assets%2Fdata%2Fpico%2Fpico-easy.jsonR2i16714R3R4R5R65R6tgoR0y37:assets%2Fdata%2Fpico%2Fpico-hard.jsonR2i19717R3R4R5R66R6tgoR0y32:assets%2Fdata%2Fpico%2Fpico.jsonR2i18465R3R4R5R67R6tgoR0y34:assets%2Fdata%2Fridge%2Fridge.jsonR2i22981R3R4R5R68R6tgoR0y39:assets%2Fdata%2Froses%2Froses-easy.jsonR2i18012R3R4R5R69R6tgoR0y39:assets%2Fdata%2Froses%2Froses-hard.jsonR2i22812R3R4R5R70R6tgoR0y34:assets%2Fdata%2Froses%2Froses.jsonR2i20774R3R4R5R71R6tgoR0y41:assets%2Fdata%2Froses%2FrosesDialogue.txtR2i155R3R4R5R72R6tgoR0y55:assets%2Fdata%2Fsatin-panties%2Fsatin-panties-easy.jsonR2i27379R3R4R5R73R6tgoR0y55:assets%2Fdata%2Fsatin-panties%2Fsatin-panties-hard.jsonR2i36327R3R4R5R74R6tgoR0y50:assets%2Fdata%2Fsatin-panties%2Fsatin-panties.jsonR2i31463R3R4R5R75R6tgoR0y41:assets%2Fdata%2Fsenpai%2Fsenpai-easy.jsonR2i30618R3R4R5R76R6tgoR0y41:assets%2Fdata%2Fsenpai%2Fsenpai-hard.jsonR2i34573R3R4R5R77R6tgoR0y36:assets%2Fdata%2Fsenpai%2Fsenpai.jsonR2i32889R3R4R5R78R6tgoR0y43:assets%2Fdata%2Fsenpai%2FsenpaiDialogue.txtR2i164R3R4R5R79R6tgoR0y34:assets%2Fdata%2Fsmash%2Fsmash.jsonR2i102R3R4R5R80R6tgoR0y39:assets%2Fdata%2Fsouth%2Fsouth-easy.jsonR2i20031R3R4R5R81R6tgoR0y39:assets%2Fdata%2Fsouth%2Fsouth-hard.jsonR2i22927R3R4R5R82R6tgoR0y34:assets%2Fdata%2Fsouth%2Fsouth.jsonR2i22238R3R4R5R83R6tgoR0y33:assets%2Fdata%2FspecialThanks.txtR2i322R3R4R5R84R6tgoR0y45:assets%2Fdata%2Fspookeez%2Fspookeez-easy.jsonR2i19092R3R4R5R85R6tgoR0y45:assets%2Fdata%2Fspookeez%2Fspookeez-hard.jsonR2i21777R3R4R5R86R6tgoR0y40:assets%2Fdata%2Fspookeez%2Fspookeez.jsonR2i20289R3R4R5R87R6tgoR0y41:assets%2Fdata%2Fthorns%2Fthorns-easy.jsonR2i34656R3R4R5R88R6tgoR0y41:assets%2Fdata%2Fthorns%2Fthorns-hard.jsonR2i47868R3R4R5R89R6tgoR0y36:assets%2Fdata%2Fthorns%2Fthorns.jsonR2i40667R3R4R5R90R6tgoR0y43:assets%2Fdata%2Fthorns%2FthornsDialogue.txtR2i309R3R4R5R91R6tgoR0y45:assets%2Fdata%2Ftutorial%2Ftutorial-easy.jsonR2i5739R3R4R5R92R6tgoR0y45:assets%2Fdata%2Ftutorial%2Ftutorial-hard.jsonR2i6335R3R4R5R93R6tgoR0y40:assets%2Fdata%2Ftutorial%2Ftutorial.jsonR2i5739R3R4R5R94R6tgoR0y63:assets%2Fdata%2Fwinter-horrorland%2Fwinter-horrorland-easy.jsonR2i137984R3R4R5R95R6tgoR0y63:assets%2Fdata%2Fwinter-horrorland%2Fwinter-horrorland-hard.jsonR2i177925R3R4R5R96R6tgoR0y58:assets%2Fdata%2Fwinter-horrorland%2Fwinter-horrorland.jsonR2i154340R3R4R5R97R6tgoR0y30:assets%2Fimages%2Falphabet.pngR2i148001R3y5:IMAGER5R98R6tgoR0y30:assets%2Fimages%2Falphabet.xmlR2i39574R3R4R5R100R6tgoR0y45:assets%2Fimages%2Fcampaign_menu_UI_assets.pngR2i27171R3R99R5R101R6tgoR0y45:assets%2Fimages%2Fcampaign_menu_UI_assets.xmlR2i1920R3R4R5R102R6tgoR0y49:assets%2Fimages%2Fcampaign_menu_UI_characters.pngR2i2468919R3R99R5R103R6tgoR0y49:assets%2Fimages%2Fcampaign_menu_UI_characters.xmlR2i22788R3R4R5R104R6tgoR0y42:assets%2Fimages%2FFNF_main_menu_assets.pngR2i281298R3R99R5R105R6tgoR0y42:assets%2Fimages%2FFNF_main_menu_assets.xmlR2i4808R3R4R5R106R6tgoR0y34:assets%2Fimages%2FgfDanceTitle.pngR2i3070888R3R99R5R107R6tgoR0y34:assets%2Fimages%2FgfDanceTitle.xmlR2i4294R3R4R5R108R6tgoR0y34:assets%2Fimages%2Fhand_textbox.pngR2i260R3R99R5R109R6tgoR0y30:assets%2Fimages%2FiconGrid.pngR2i237293R3R99R5R110R6tgoR0y26:assets%2Fimages%2Flick.pngR2i167401R3R99R5R111R6tgoR0y26:assets%2Fimages%2Flogo.pngR2i86924R3R99R5R112R6tgoR0y32:assets%2Fimages%2FlogoBumpin.pngR2i1052779R3R99R5R113R6tgoR0y32:assets%2Fimages%2FlogoBumpin.xmlR2i2197R3R4R5R114R6tgoR0y28:assets%2Fimages%2FmenuBG.pngR2i1067798R3R99R5R115R6tgoR0y31:assets%2Fimages%2FmenuBGalt.pngR2i1368972R3R99R5R116R6tgoR0y32:assets%2Fimages%2FmenuBGBlue.pngR2i1079920R3R99R5R117R6tgoR0y35:assets%2Fimages%2FmenuBGMagenta.pngR2i1071621R3R99R5R118R6tgoR0y38:assets%2Fimages%2FmenuBGMagentaalt.pngR2i920776R3R99R5R119R6tgoR0y31:assets%2Fimages%2FmenuDesat.pngR2i633779R3R99R5R120R6tgoR0y34:assets%2Fimages%2FmenuDesatalt.pngR2i920776R3R99R5R121R6tgoR0y37:assets%2Fimages%2Fnewgrounds_logo.pngR2i57747R3R99R5R122R6tgoR0y26:assets%2Fimages%2Fnum0.pngR2i3738R3R99R5R123R6tgoR0y26:assets%2Fimages%2Fnum1.pngR2i3390R3R99R5R124R6tgoR0y26:assets%2Fimages%2Fnum2.pngR2i3990R3R99R5R125R6tgoR0y26:assets%2Fimages%2Fnum3.pngR2i4022R3R99R5R126R6tgoR0y26:assets%2Fimages%2Fnum4.pngR2i3989R3R99R5R127R6tgoR0y26:assets%2Fimages%2Fnum5.pngR2i4113R3R99R5R128R6tgoR0y26:assets%2Fimages%2Fnum6.pngR2i4181R3R99R5R129R6tgoR0y26:assets%2Fimages%2Fnum7.pngR2i3692R3R99R5R130R6tgoR0y26:assets%2Fimages%2Fnum8.pngR2i3914R3R99R5R131R6tgoR0y26:assets%2Fimages%2Fnum9.pngR2i3687R3R99R5R132R6tgoR0y39:assets%2Fimages%2Fstorymenu%2Fweek0.pngR2i7056R3R99R5R133R6tgoR0y39:assets%2Fimages%2Fstorymenu%2Fweek1.pngR2i6261R3R99R5R134R6tgoR0y39:assets%2Fimages%2Fstorymenu%2Fweek2.pngR2i6517R3R99R5R135R6tgoR0y39:assets%2Fimages%2Fstorymenu%2Fweek3.pngR2i7148R3R99R5R136R6tgoR0y39:assets%2Fimages%2Fstorymenu%2Fweek4.pngR2i6262R3R99R5R137R6tgoR0y39:assets%2Fimages%2Fstorymenu%2Fweek5.pngR2i6440R3R99R5R138R6tgoR0y39:assets%2Fimages%2Fstorymenu%2Fweek6.pngR2i6998R3R99R5R139R6tgoR0y39:assets%2Fimages%2Fstorymenu%2Fweek7.pngR2i21026R3R99R5R140R6tgoR0y40:assets%2Fimages%2Ftitle%20background.pngR2i5273R3R99R5R141R6tgoR0y29:assets%2Fimages%2FtitleBG.pngR2i5273R3R99R5R142R6tgoR0y32:assets%2Fimages%2FtitleEnter.pngR2i1449202R3R99R5R143R6tgoR0y32:assets%2Fimages%2FtitleEnter.xmlR2i4934R3R4R5R144R6tgoR2i2309657R3y5:MUSICR5y31:assets%2Fmusic%2FfreakyMenu.mp3y9:pathGroupaR146hR6tgoR2i17762R3R145R5y32:assets%2Fsounds%2FcancelMenu.mp3R147aR148hR6tgoR2i91950R3R145R5y33:assets%2Fsounds%2FconfirmMenu.mp3R147aR149hR6tgoR2i17762R3R145R5y32:assets%2Fsounds%2FscrollMenu.mp3R147aR150hR6tgoR0y48:mods%2FintroMod%2F_append%2Fdata%2FintroText.txtR2i20R3R4R5R151goR0y18:mods%2FmodList.txtR2i8R3R4R5R152goR0y17:mods%2Freadme.txtR2i90R3R4R5R153goR0y21:do%20NOT%20readme.txtR2i4326R3R4R5R154R6tgoR0y13:changelog.txtR2i7730R3R4R5R155R6tgoR2i112576R3y4:FONTy9:classNamey36:__ASSET__assets_fonts_beatstreet_ttfR5y31:assets%2Ffonts%2Fbeatstreet.ttfR6tgoR0y34:assets%2Ffonts%2Ffonts-go-here.txtR2i13R3R4R5R160R6tgoR2i16312R3R156R157y46:__ASSET__assets_fonts_fridayfunkin_regular_otfR5y41:assets%2Ffonts%2FFridayFunkin-Regular.otfR6tgoR2i16312R3R156R157y46:__ASSET__assets_fonts_fridayfunkin_regular_ttfR5y41:assets%2Ffonts%2FFridayFunkin-Regular.ttfR6tgoR2i14656R3R156R157y31:__ASSET__assets_fonts_pixel_otfR5y26:assets%2Ffonts%2Fpixel.otfR6tgoR2i75864R3R156R157y29:__ASSET__assets_fonts_vcr_ttfR5y24:assets%2Ffonts%2Fvcr.ttfR6tgoR2i2114R3R145R5y26:flixel%2Fsounds%2Fbeep.mp3R147aR169y26:flixel%2Fsounds%2Fbeep.ogghR6tgoR2i39706R3R145R5y28:flixel%2Fsounds%2Fflixel.mp3R147aR171y28:flixel%2Fsounds%2Fflixel.ogghR6tgoR2i5794R3y5:SOUNDR5R170R147aR169R170hgoR2i33629R3R173R5R172R147aR171R172hgoR2i15744R3R156R157y35:__ASSET__flixel_fonts_nokiafc22_ttfR5y30:flixel%2Ffonts%2Fnokiafc22.ttfR6tgoR2i29724R3R156R157y36:__ASSET__flixel_fonts_monsterrat_ttfR5y31:flixel%2Ffonts%2Fmonsterrat.ttfR6tgoR0y33:flixel%2Fimages%2Fui%2Fbutton.pngR2i519R3R99R5R178R6tgoR0y36:flixel%2Fimages%2Flogo%2Fdefault.pngR2i3280R3R99R5R179R6tgoR0y34:flixel%2Fflixel-ui%2Fimg%2Fbox.pngR2i912R3R99R5R180R6tgoR0y37:flixel%2Fflixel-ui%2Fimg%2Fbutton.pngR2i433R3R99R5R181R6tgoR0y48:flixel%2Fflixel-ui%2Fimg%2Fbutton_arrow_down.pngR2i446R3R99R5R182R6tgoR0y48:flixel%2Fflixel-ui%2Fimg%2Fbutton_arrow_left.pngR2i459R3R99R5R183R6tgoR0y49:flixel%2Fflixel-ui%2Fimg%2Fbutton_arrow_right.pngR2i511R3R99R5R184R6tgoR0y46:flixel%2Fflixel-ui%2Fimg%2Fbutton_arrow_up.pngR2i493R3R99R5R185R6tgoR0y42:flixel%2Fflixel-ui%2Fimg%2Fbutton_thin.pngR2i247R3R99R5R186R6tgoR0y44:flixel%2Fflixel-ui%2Fimg%2Fbutton_toggle.pngR2i534R3R99R5R187R6tgoR0y40:flixel%2Fflixel-ui%2Fimg%2Fcheck_box.pngR2i922R3R99R5R188R6tgoR0y41:flixel%2Fflixel-ui%2Fimg%2Fcheck_mark.pngR2i946R3R99R5R189R6tgoR0y37:flixel%2Fflixel-ui%2Fimg%2Fchrome.pngR2i253R3R99R5R190R6tgoR0y42:flixel%2Fflixel-ui%2Fimg%2Fchrome_flat.pngR2i212R3R99R5R191R6tgoR0y43:flixel%2Fflixel-ui%2Fimg%2Fchrome_inset.pngR2i192R3R99R5R192R6tgoR0y43:flixel%2Fflixel-ui%2Fimg%2Fchrome_light.pngR2i214R3R99R5R193R6tgoR0y44:flixel%2Fflixel-ui%2Fimg%2Fdropdown_mark.pngR2i156R3R99R5R194R6tgoR0y41:flixel%2Fflixel-ui%2Fimg%2Ffinger_big.pngR2i1724R3R99R5R195R6tgoR0y43:flixel%2Fflixel-ui%2Fimg%2Ffinger_small.pngR2i294R3R99R5R196R6tgoR0y38:flixel%2Fflixel-ui%2Fimg%2Fhilight.pngR2i129R3R99R5R197R6tgoR0y36:flixel%2Fflixel-ui%2Fimg%2Finvis.pngR2i128R3R99R5R198R6tgoR0y41:flixel%2Fflixel-ui%2Fimg%2Fminus_mark.pngR2i136R3R99R5R199R6tgoR0y40:flixel%2Fflixel-ui%2Fimg%2Fplus_mark.pngR2i147R3R99R5R200R6tgoR0y36:flixel%2Fflixel-ui%2Fimg%2Fradio.pngR2i191R3R99R5R201R6tgoR0y40:flixel%2Fflixel-ui%2Fimg%2Fradio_dot.pngR2i153R3R99R5R202R6tgoR0y37:flixel%2Fflixel-ui%2Fimg%2Fswatch.pngR2i185R3R99R5R203R6tgoR0y34:flixel%2Fflixel-ui%2Fimg%2Ftab.pngR2i201R3R99R5R204R6tgoR0y39:flixel%2Fflixel-ui%2Fimg%2Ftab_back.pngR2i210R3R99R5R205R6tgoR0y44:flixel%2Fflixel-ui%2Fimg%2Ftooltip_arrow.pngR2i18509R3R99R5R206R6tgoR0y39:flixel%2Fflixel-ui%2Fxml%2Fdefaults.xmlR2i1263R3R4R5R207R6tgoR0y53:flixel%2Fflixel-ui%2Fxml%2Fdefault_loading_screen.xmlR2i1953R3R4R5R208R6tgoR0y44:flixel%2Fflixel-ui%2Fxml%2Fdefault_popup.xmlR2i1848R3R4R5R209R6tgh","rootPath":null,"version":2,"libraryArgs":[],"libraryType":null}';
		manifest = AssetManifest.parse (data, rootPath);
		library = AssetLibrary.fromManifest (manifest);
		Assets.registerLibrary ("default", library);
		

		library = Assets.getLibrary ("default");
		if (library != null) preloadLibraries.push (library);
		else preloadLibraryNames.push ("default");
		

		#end

	}


}


#if kha

null

#else

#if !display
#if flash

@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_always_here_always_here_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_always_here_always_here_hard_old_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_always_here_always_here_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_always_here_always_here_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_always_here_always_heredialogue_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_blammed_blammed_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_blammed_blammed_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_blammed_blammed_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_bopeebo_bopeebo_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_bopeebo_bopeebo_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_bopeebo_bopeebo_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_characterlist_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_cocoa_cocoa_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_cocoa_cocoa_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_cocoa_cocoa_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_controls_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_dadbattle_dadbattle_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_dadbattle_dadbattle_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_dadbattle_dadbattle_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_data_goes_here_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_eggnog_eggnog_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_eggnog_eggnog_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_eggnog_eggnog_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_familial_bonds_familial_bonds_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_familial_bonds_familial_bonds_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_familial_bonds_familial_bonds_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_familial_bonds_familial_bondsdialogue_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_freeplaysonglist_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_fresh_fresh_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_fresh_fresh_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_fresh_fresh_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_heartache_heartache_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_heartache_heartache_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_heartache_heartache_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_heartache_heartachedialogue_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_heartacheend_heartacheend_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_heartacheend_heartacheend_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_heartacheend_heartacheend_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_heartacheend_heartacheenddialogue_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_high_high_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_high_high_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_high_high_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_introtext_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_main_view_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_memories_memories_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_memories_memories_hard_old_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_memories_memories_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_memories_memories_old_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_memories_memories_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_memories_memoriesdialogue_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_milf_milf_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_milf_milf_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_milf_milf_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_monster_monster_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_monster_monster_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_monster_monster_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_philly_philly_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_philly_philly_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_philly_philly_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_pico_pico_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_pico_pico_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_pico_pico_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_ridge_ridge_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_roses_roses_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_roses_roses_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_roses_roses_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_roses_rosesdialogue_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_satin_panties_satin_panties_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_satin_panties_satin_panties_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_satin_panties_satin_panties_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_senpai_senpai_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_senpai_senpai_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_senpai_senpai_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_senpai_senpaidialogue_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_smash_smash_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_south_south_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_south_south_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_south_south_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_specialthanks_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_spookeez_spookeez_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_spookeez_spookeez_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_spookeez_spookeez_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_thorns_thorns_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_thorns_thorns_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_thorns_thorns_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_thorns_thornsdialogue_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_tutorial_tutorial_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_tutorial_tutorial_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_tutorial_tutorial_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_winter_horrorland_winter_horrorland_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_winter_horrorland_winter_horrorland_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_winter_horrorland_winter_horrorland_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_alphabet_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_alphabet_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_campaign_menu_ui_assets_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_campaign_menu_ui_assets_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_campaign_menu_ui_characters_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_campaign_menu_ui_characters_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_fnf_main_menu_assets_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_fnf_main_menu_assets_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_gfdancetitle_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_gfdancetitle_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_hand_textbox_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_icongrid_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_lick_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_logo_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_logobumpin_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_logobumpin_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menubg_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menubgalt_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menubgblue_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menubgmagenta_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menubgmagentaalt_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menudesat_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menudesatalt_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_newgrounds_logo_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_num0_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_num1_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_num2_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_num3_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_num4_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_num5_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_num6_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_num7_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_num8_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_num9_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_storymenu_week0_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_storymenu_week1_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_storymenu_week2_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_storymenu_week3_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_storymenu_week4_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_storymenu_week5_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_storymenu_week6_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_storymenu_week7_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_title_background_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_titlebg_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_titleenter_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_titleenter_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_music_freakymenu_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_cancelmenu_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_confirmmenu_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_scrollmenu_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_always_here_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_always_here_voices_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_blammed_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_blammed_voices_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_bopeebo_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_bopeebo_voices_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_cocoa_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_cocoa_voices_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_dadbattle_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_dadbattle_voices_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_eggnog_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_eggnog_voices_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_familial_bonds_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_familial_bonds_voices_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_fresh_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_fresh_voices_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_heartache_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_heartacheend_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_high_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_high_voices_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_memories_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_memories_voices_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_milf_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_milf_voices_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_monster_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_monster_voices_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_philly_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_philly_voices_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_pico_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_pico_voices_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_roses_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_roses_voices_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_satin_panties_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_satin_panties_voices_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_senpai_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_senpai_voices_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_south_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_south_voices_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_spookeez_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_spookeez_voices_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_test_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_test_voices_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_thorns_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_thorns_voices_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_tutorial_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_winter_horrorland_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_winter_horrorland_voices_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_backspace_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_backspace_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_bad_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_bb_bb_lipsync_assets_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_bb_bb_lipsync_assets_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_bb_bbtired_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_bb_bbtired_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_bb_bb_sprite_sheet_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_bb_bb_sprite_sheet_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_bb_beatboxonly_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_bb_beatboxonly_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_bb_boyfriendworried_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_bb_boyfriendworried_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_bb_playablebb_lipsync_assets_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_bb_playablebb_lipsync_assets_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_bb_playablebb_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_bb_playablebb_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_bb_youwinlipsync_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_bb_youwinlipsync_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_beatboxonly_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_beatboxonly_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_boyfriend_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_boyfriend_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_combo_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_conversation1_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_daddy_dearest_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_daddy_dearest_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_gf_assets_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_gf_assets_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_go_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_good_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_grafix_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_healthbar_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_images_go_here_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_lol_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_lose_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_lose_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_note_assets_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_note_assets_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_pausealt_bflol_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_pausealt_bflol_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_pausealt_pausebg_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_pausealt_pauseui_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_pausealt_pauseui_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_ready_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_restart_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_sboyfriend_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_sboyfriend_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_screencaptierimage_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_set_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_sexy_zone_shitpost2eletricbooglaoostarr_shrimp_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_shit_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_shitpoststarr_shrimp_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_sick_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_speech_bubble_talking_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_speech_bubble_talking_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_stageback_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_stagecurtains_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_stagefront_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_stage_light_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_week54prototype_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_zzzzzzzz_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_music_breakfast_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_music_cougarva__why_are_you_like_this_lol_wav extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_music_gameover_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_music_gameoverend_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_angry_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_angry_text_box_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_badnoise1_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_badnoise2_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_badnoise3_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_bblines_bbdead_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_bbtext_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_bftext_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_carpass0_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_carpass1_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_clicktext_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_fnf_loss_sfx_pixel_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_fnf_loss_sfx_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_gf_1_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_gf_2_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_gf_3_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_gf_4_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_intro1_pixel_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_intro1_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_intro2_pixel_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_intro2_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_intro3_pixel_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_intro3_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_introgo_pixel_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_introgo_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_lights_shut_off_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_lights_turn_on_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_missnote1_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_missnote2_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_missnote3_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_pixeltext_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_senpai_dies_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_sounds_go_here_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_soundtest_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_thunder_1_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_thunder_2_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_train_passes_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_tutorial_tutorial_stuff_here_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week1_week1_stuff_here_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week2_images_halloween_bg_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week2_images_halloween_bg_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week2_images_monster_assets_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week2_images_monster_assets_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week2_images_spooky_kids_assets_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week2_images_spooky_kids_assets_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week2_week2_stuff_here_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week3_images_philly_behindtrain_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week3_images_philly_city_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week3_images_philly_sky_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week3_images_philly_street_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week3_images_philly_train_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week3_images_philly_win0_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week3_images_philly_win1_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week3_images_philly_win2_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week3_images_philly_win3_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week3_images_philly_win4_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week3_images_pico_fnf_assetss_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week3_images_pico_fnf_assetss_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week3_week3_stuff_here_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week4_images_bfcar_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week4_images_bfcar_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week4_images_gfcar_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week4_images_gfcar_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week4_images_limo_bglimo_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week4_images_limo_bglimo_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week4_images_limo_dumb_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week4_images_limo_fastcarlol_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week4_images_limo_limodancer_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week4_images_limo_limodancer_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week4_images_limo_limodrive_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week4_images_limo_limodrive_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week4_images_limo_limooverlay_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week4_images_limo_limosunset_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week4_images_momcar_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week4_images_momcar_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week4_images_mom_assets_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week4_images_mom_assets_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week4_week4_stuff_here_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_bfchristmas_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_bfchristmas_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_bgescalator_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_bgwalls_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_bottombop_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_bottombop_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_christmastree_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_christmaswall_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_evilbg_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_evilsnow_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_eviltree_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_fgsnow_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_gfchristmas_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_gfchristmas_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_mom_dad_christmas_assets_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_mom_dad_christmas_assets_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_monsterchristmas_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_monsterchristmas_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_santa_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_santa_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_upperbop_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_upperbop_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week5_week5_stuff_here_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_animatedevilschool_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_animatedevilschool_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_bfpixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_bfpixel_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_bfpixelsdead_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_bfpixelsdead_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_bfportrait_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_bfportrait_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_bgfreaks_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_bgfreaks_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_evilschoolbg_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_evilschoolfg_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_gfpixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_gfpixel_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_petals_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_petals_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_arrowends_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_arrows_pixels_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_bad_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_combo_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_date_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_dialoguebox_evil_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_dialoguebox_evil_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_dialoguebox_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_dialoguebox_pixel_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_dialoguebox_senpaimad_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_dialoguebox_senpaimad_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_good_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_hand_textbox_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_num0_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_num1_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_num2_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_num3_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_num4_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_num5_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_num6_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_num7_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_num8_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_num9_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_ready_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_set_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_shit_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_sick_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_senpai_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_senpai_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_senpaicrazy_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_senpaicrazy_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_senpaiportrait_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_senpaiportrait_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_spirit_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_spirit_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_spiritfaceforward_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_weebschool_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_weebsky_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_weebstreet_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_weebtrees_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_weebtrees_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_weebtreesback_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_music_gameover_pixel_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_music_gameoverend_pixel_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_music_lunchbox_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_music_lunchboxscary_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_week6_stuff_here_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_images_cutscenes_aftermath0_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_images_cutscenes_aftermath1_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_images_cutscenes_aftermath2_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_images_cutscenes_aftermath3_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_images_cutscenes_intro1_1_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_images_cutscenes_intro1_2_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_images_cutscenes_intro1_3_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_images_diabox_speech_bubble_talking_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_images_diabox_speech_bubble_talking_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_images_dialogueportraits_10_2_2020_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_images_dialogueportraits_bb_1_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_images_dialogueportraits_bb_2_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_images_dialogueportraits_bb_3_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_images_dialogueportraits_bb_4_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_images_dialogueportraits_bb_5_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_images_dialogueportraits_bf_1_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_images_dialogueportraits_bf_2_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_images_dialogueportraits_bf_3_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_images_dialogueportraits_bf_4_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_images_dialogueportraits_bf_5_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_images_dialogueportraits_blank_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_images_prologue_distantcity_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_images_prologue_poll_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_images_prologue_rooftop_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_images_prologue_rooftopsky_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_images_prologue_win0_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_images_prologue_win1_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_images_prologue_win2_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_images_prologue_win3_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_images_prologue_win4_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_images_why_did_i_draw_thisstarr_shrimp__png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_music_breakfast_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_music_dialogue_dialoguemusic_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_alw_1_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_alw_2_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_alw_3_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_alw_4_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_alw_5_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_alw_6_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_alw_7_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_alw_8_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_end_1_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_end_10_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_end_11_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_end_12_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_end_13_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_end_14_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_end_15_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_end_16_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_end_17_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_end_18_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_end_19_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_end_2_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_end_20_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_end_21_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_end_22_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_end_23_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_end_3_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_end_4_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_end_5_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_end_6_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_end_7_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_end_8_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_end_9_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_fam_1_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_fam_10_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_fam_11_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_fam_12_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_fam_13_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_fam_2_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_fam_3_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_fam_4_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_fam_5_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_fam_6_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_fam_7_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_fam_8_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_fam_9_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_hea_1_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_hea_2_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_hea_3_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_hea_4_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_hea_5_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_hea_6_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_hea_7_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_hea_8_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_hea_9_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_mem_1_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_mem_10_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_mem_2_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_mem_3_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_mem_4_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_mem_5_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_mem_6_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_mem_7_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_mem_8_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_mem_9_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_intromod__append_data_introtext_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_modlist_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_readme_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__do_not_readme_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__changelog_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_fonts_beatstreet_ttf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_fonts_fonts_go_here_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_fonts_fridayfunkin_regular_otf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_fonts_fridayfunkin_regular_ttf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_fonts_pixel_otf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_fonts_vcr_ttf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_sounds_beep_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_sounds_flixel_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_sounds_beep_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_sounds_flixel_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_fonts_nokiafc22_ttf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_fonts_monsterrat_ttf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_images_ui_button_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_images_logo_default_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_box_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_arrow_down_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_arrow_left_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_arrow_right_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_arrow_up_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_thin_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_toggle_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_check_box_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_check_mark_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_chrome_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_chrome_flat_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_chrome_inset_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_chrome_light_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_dropdown_mark_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_finger_big_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_finger_small_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_hilight_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_invis_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_minus_mark_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_plus_mark_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_radio_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_radio_dot_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_swatch_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_tab_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_tab_back_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_tooltip_arrow_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_xml_defaults_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_xml_default_loading_screen_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_xml_default_popup_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__manifest_songs_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__manifest_shared_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__manifest_tutorial_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__manifest_week1_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__manifest_week2_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__manifest_week3_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__manifest_week4_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__manifest_week5_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__manifest_week6_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__manifest_week7_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__manifest_default_json extends null { }


#elseif (desktop || cpp)

@:keep @:file("assets/preload/data/always-here/always-here-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_always_here_always_here_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/always-here/always-here-hard-old.json") @:noCompletion #if display private #end class __ASSET__assets_data_always_here_always_here_hard_old_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/always-here/always-here-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_always_here_always_here_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/always-here/always-here.json") @:noCompletion #if display private #end class __ASSET__assets_data_always_here_always_here_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/always-here/always-hereDialogue.txt") @:noCompletion #if display private #end class __ASSET__assets_data_always_here_always_heredialogue_txt extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/blammed/blammed-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_blammed_blammed_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/blammed/blammed-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_blammed_blammed_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/blammed/blammed.json") @:noCompletion #if display private #end class __ASSET__assets_data_blammed_blammed_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/bopeebo/bopeebo-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_bopeebo_bopeebo_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/bopeebo/bopeebo-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_bopeebo_bopeebo_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/bopeebo/bopeebo.json") @:noCompletion #if display private #end class __ASSET__assets_data_bopeebo_bopeebo_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/characterList.txt") @:noCompletion #if display private #end class __ASSET__assets_data_characterlist_txt extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/cocoa/cocoa-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_cocoa_cocoa_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/cocoa/cocoa-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_cocoa_cocoa_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/cocoa/cocoa.json") @:noCompletion #if display private #end class __ASSET__assets_data_cocoa_cocoa_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/controls.txt") @:noCompletion #if display private #end class __ASSET__assets_data_controls_txt extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/dadbattle/dadbattle-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_dadbattle_dadbattle_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/dadbattle/dadbattle-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_dadbattle_dadbattle_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/dadbattle/dadbattle.json") @:noCompletion #if display private #end class __ASSET__assets_data_dadbattle_dadbattle_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/data-goes-here.txt") @:noCompletion #if display private #end class __ASSET__assets_data_data_goes_here_txt extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/eggnog/eggnog-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_eggnog_eggnog_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/eggnog/eggnog-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_eggnog_eggnog_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/eggnog/eggnog.json") @:noCompletion #if display private #end class __ASSET__assets_data_eggnog_eggnog_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/familial-bonds/familial-bonds-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_familial_bonds_familial_bonds_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/familial-bonds/familial-bonds-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_familial_bonds_familial_bonds_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/familial-bonds/familial-bonds.json") @:noCompletion #if display private #end class __ASSET__assets_data_familial_bonds_familial_bonds_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/familial-bonds/familial-bondsDialogue.txt") @:noCompletion #if display private #end class __ASSET__assets_data_familial_bonds_familial_bondsdialogue_txt extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/freeplaySonglist.txt") @:noCompletion #if display private #end class __ASSET__assets_data_freeplaysonglist_txt extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/fresh/fresh-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_fresh_fresh_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/fresh/fresh-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_fresh_fresh_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/fresh/fresh.json") @:noCompletion #if display private #end class __ASSET__assets_data_fresh_fresh_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/heartache/heartache-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_heartache_heartache_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/heartache/heartache-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_heartache_heartache_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/heartache/heartache.json") @:noCompletion #if display private #end class __ASSET__assets_data_heartache_heartache_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/heartache/heartacheDialogue.txt") @:noCompletion #if display private #end class __ASSET__assets_data_heartache_heartachedialogue_txt extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/heartacheend/heartacheend-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_heartacheend_heartacheend_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/heartacheend/heartacheend-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_heartacheend_heartacheend_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/heartacheend/heartacheend.json") @:noCompletion #if display private #end class __ASSET__assets_data_heartacheend_heartacheend_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/heartacheend/heartacheendDialogue.txt") @:noCompletion #if display private #end class __ASSET__assets_data_heartacheend_heartacheenddialogue_txt extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/high/high-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_high_high_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/high/high-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_high_high_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/high/high.json") @:noCompletion #if display private #end class __ASSET__assets_data_high_high_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/introText.txt") @:noCompletion #if display private #end class __ASSET__assets_data_introtext_txt extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/main-view.xml") @:noCompletion #if display private #end class __ASSET__assets_data_main_view_xml extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/memories/memories-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_memories_memories_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/memories/memories-hard-old.json") @:noCompletion #if display private #end class __ASSET__assets_data_memories_memories_hard_old_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/memories/memories-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_memories_memories_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/memories/memories-old.json") @:noCompletion #if display private #end class __ASSET__assets_data_memories_memories_old_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/memories/memories.json") @:noCompletion #if display private #end class __ASSET__assets_data_memories_memories_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/memories/memoriesDialogue.txt") @:noCompletion #if display private #end class __ASSET__assets_data_memories_memoriesdialogue_txt extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/milf/milf-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_milf_milf_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/milf/milf-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_milf_milf_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/milf/milf.json") @:noCompletion #if display private #end class __ASSET__assets_data_milf_milf_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/monster/monster-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_monster_monster_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/monster/monster-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_monster_monster_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/monster/monster.json") @:noCompletion #if display private #end class __ASSET__assets_data_monster_monster_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/philly/philly-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_philly_philly_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/philly/philly-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_philly_philly_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/philly/philly.json") @:noCompletion #if display private #end class __ASSET__assets_data_philly_philly_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/pico/pico-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_pico_pico_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/pico/pico-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_pico_pico_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/pico/pico.json") @:noCompletion #if display private #end class __ASSET__assets_data_pico_pico_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/ridge/ridge.json") @:noCompletion #if display private #end class __ASSET__assets_data_ridge_ridge_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/roses/roses-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_roses_roses_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/roses/roses-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_roses_roses_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/roses/roses.json") @:noCompletion #if display private #end class __ASSET__assets_data_roses_roses_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/roses/rosesDialogue.txt") @:noCompletion #if display private #end class __ASSET__assets_data_roses_rosesdialogue_txt extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/satin-panties/satin-panties-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_satin_panties_satin_panties_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/satin-panties/satin-panties-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_satin_panties_satin_panties_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/satin-panties/satin-panties.json") @:noCompletion #if display private #end class __ASSET__assets_data_satin_panties_satin_panties_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/senpai/senpai-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_senpai_senpai_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/senpai/senpai-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_senpai_senpai_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/senpai/senpai.json") @:noCompletion #if display private #end class __ASSET__assets_data_senpai_senpai_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/senpai/senpaiDialogue.txt") @:noCompletion #if display private #end class __ASSET__assets_data_senpai_senpaidialogue_txt extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/smash/smash.json") @:noCompletion #if display private #end class __ASSET__assets_data_smash_smash_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/south/south-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_south_south_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/south/south-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_south_south_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/south/south.json") @:noCompletion #if display private #end class __ASSET__assets_data_south_south_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/specialThanks.txt") @:noCompletion #if display private #end class __ASSET__assets_data_specialthanks_txt extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/spookeez/spookeez-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_spookeez_spookeez_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/spookeez/spookeez-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_spookeez_spookeez_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/spookeez/spookeez.json") @:noCompletion #if display private #end class __ASSET__assets_data_spookeez_spookeez_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/thorns/thorns-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_thorns_thorns_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/thorns/thorns-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_thorns_thorns_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/thorns/thorns.json") @:noCompletion #if display private #end class __ASSET__assets_data_thorns_thorns_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/thorns/thornsDialogue.txt") @:noCompletion #if display private #end class __ASSET__assets_data_thorns_thornsdialogue_txt extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/tutorial/tutorial-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_tutorial_tutorial_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/tutorial/tutorial-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_tutorial_tutorial_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/tutorial/tutorial.json") @:noCompletion #if display private #end class __ASSET__assets_data_tutorial_tutorial_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/winter-horrorland/winter-horrorland-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_winter_horrorland_winter_horrorland_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/winter-horrorland/winter-horrorland-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_winter_horrorland_winter_horrorland_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/winter-horrorland/winter-horrorland.json") @:noCompletion #if display private #end class __ASSET__assets_data_winter_horrorland_winter_horrorland_json extends haxe.io.Bytes {}
@:keep @:image("assets/preload/images/alphabet.png") @:noCompletion #if display private #end class __ASSET__assets_images_alphabet_png extends lime.graphics.Image {}
@:keep @:file("assets/preload/images/alphabet.xml") @:noCompletion #if display private #end class __ASSET__assets_images_alphabet_xml extends haxe.io.Bytes {}
@:keep @:image("assets/preload/images/campaign_menu_UI_assets.png") @:noCompletion #if display private #end class __ASSET__assets_images_campaign_menu_ui_assets_png extends lime.graphics.Image {}
@:keep @:file("assets/preload/images/campaign_menu_UI_assets.xml") @:noCompletion #if display private #end class __ASSET__assets_images_campaign_menu_ui_assets_xml extends haxe.io.Bytes {}
@:keep @:image("assets/preload/images/campaign_menu_UI_characters.png") @:noCompletion #if display private #end class __ASSET__assets_images_campaign_menu_ui_characters_png extends lime.graphics.Image {}
@:keep @:file("assets/preload/images/campaign_menu_UI_characters.xml") @:noCompletion #if display private #end class __ASSET__assets_images_campaign_menu_ui_characters_xml extends haxe.io.Bytes {}
@:keep @:image("assets/preload/images/FNF_main_menu_assets.png") @:noCompletion #if display private #end class __ASSET__assets_images_fnf_main_menu_assets_png extends lime.graphics.Image {}
@:keep @:file("assets/preload/images/FNF_main_menu_assets.xml") @:noCompletion #if display private #end class __ASSET__assets_images_fnf_main_menu_assets_xml extends haxe.io.Bytes {}
@:keep @:image("assets/preload/images/gfDanceTitle.png") @:noCompletion #if display private #end class __ASSET__assets_images_gfdancetitle_png extends lime.graphics.Image {}
@:keep @:file("assets/preload/images/gfDanceTitle.xml") @:noCompletion #if display private #end class __ASSET__assets_images_gfdancetitle_xml extends haxe.io.Bytes {}
@:keep @:image("assets/preload/images/hand_textbox.png") @:noCompletion #if display private #end class __ASSET__assets_images_hand_textbox_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/iconGrid.png") @:noCompletion #if display private #end class __ASSET__assets_images_icongrid_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/lick.png") @:noCompletion #if display private #end class __ASSET__assets_images_lick_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/logo.png") @:noCompletion #if display private #end class __ASSET__assets_images_logo_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/logoBumpin.png") @:noCompletion #if display private #end class __ASSET__assets_images_logobumpin_png extends lime.graphics.Image {}
@:keep @:file("assets/preload/images/logoBumpin.xml") @:noCompletion #if display private #end class __ASSET__assets_images_logobumpin_xml extends haxe.io.Bytes {}
@:keep @:image("assets/preload/images/menuBG.png") @:noCompletion #if display private #end class __ASSET__assets_images_menubg_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/menuBGalt.png") @:noCompletion #if display private #end class __ASSET__assets_images_menubgalt_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/menuBGBlue.png") @:noCompletion #if display private #end class __ASSET__assets_images_menubgblue_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/menuBGMagenta.png") @:noCompletion #if display private #end class __ASSET__assets_images_menubgmagenta_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/menuBGMagentaalt.png") @:noCompletion #if display private #end class __ASSET__assets_images_menubgmagentaalt_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/menuDesat.png") @:noCompletion #if display private #end class __ASSET__assets_images_menudesat_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/menuDesatalt.png") @:noCompletion #if display private #end class __ASSET__assets_images_menudesatalt_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/newgrounds_logo.png") @:noCompletion #if display private #end class __ASSET__assets_images_newgrounds_logo_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/num0.png") @:noCompletion #if display private #end class __ASSET__assets_images_num0_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/num1.png") @:noCompletion #if display private #end class __ASSET__assets_images_num1_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/num2.png") @:noCompletion #if display private #end class __ASSET__assets_images_num2_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/num3.png") @:noCompletion #if display private #end class __ASSET__assets_images_num3_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/num4.png") @:noCompletion #if display private #end class __ASSET__assets_images_num4_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/num5.png") @:noCompletion #if display private #end class __ASSET__assets_images_num5_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/num6.png") @:noCompletion #if display private #end class __ASSET__assets_images_num6_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/num7.png") @:noCompletion #if display private #end class __ASSET__assets_images_num7_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/num8.png") @:noCompletion #if display private #end class __ASSET__assets_images_num8_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/num9.png") @:noCompletion #if display private #end class __ASSET__assets_images_num9_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/storymenu/week0.png") @:noCompletion #if display private #end class __ASSET__assets_images_storymenu_week0_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/storymenu/week1.png") @:noCompletion #if display private #end class __ASSET__assets_images_storymenu_week1_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/storymenu/week2.png") @:noCompletion #if display private #end class __ASSET__assets_images_storymenu_week2_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/storymenu/week3.png") @:noCompletion #if display private #end class __ASSET__assets_images_storymenu_week3_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/storymenu/week4.png") @:noCompletion #if display private #end class __ASSET__assets_images_storymenu_week4_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/storymenu/week5.png") @:noCompletion #if display private #end class __ASSET__assets_images_storymenu_week5_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/storymenu/week6.png") @:noCompletion #if display private #end class __ASSET__assets_images_storymenu_week6_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/storymenu/week7.png") @:noCompletion #if display private #end class __ASSET__assets_images_storymenu_week7_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/title background.png") @:noCompletion #if display private #end class __ASSET__assets_images_title_background_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/titleBG.png") @:noCompletion #if display private #end class __ASSET__assets_images_titlebg_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/titleEnter.png") @:noCompletion #if display private #end class __ASSET__assets_images_titleenter_png extends lime.graphics.Image {}
@:keep @:file("assets/preload/images/titleEnter.xml") @:noCompletion #if display private #end class __ASSET__assets_images_titleenter_xml extends haxe.io.Bytes {}
@:keep @:file("assets/preload/music/freakyMenu.mp3") @:noCompletion #if display private #end class __ASSET__assets_music_freakymenu_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/preload/sounds/cancelMenu.mp3") @:noCompletion #if display private #end class __ASSET__assets_sounds_cancelmenu_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/preload/sounds/confirmMenu.mp3") @:noCompletion #if display private #end class __ASSET__assets_sounds_confirmmenu_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/preload/sounds/scrollMenu.mp3") @:noCompletion #if display private #end class __ASSET__assets_sounds_scrollmenu_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/always-here/Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_always_here_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/always-here/Voices.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_always_here_voices_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/blammed/Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_blammed_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/blammed/Voices.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_blammed_voices_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/bopeebo/Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_bopeebo_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/bopeebo/Voices.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_bopeebo_voices_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/cocoa/Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_cocoa_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/cocoa/Voices.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_cocoa_voices_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/dadbattle/Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_dadbattle_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/dadbattle/Voices.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_dadbattle_voices_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/eggnog/Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_eggnog_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/eggnog/Voices.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_eggnog_voices_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/familial-bonds/Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_familial_bonds_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/familial-bonds/Voices.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_familial_bonds_voices_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/fresh/Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_fresh_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/fresh/Voices.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_fresh_voices_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/heartache/Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_heartache_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/heartacheend/Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_heartacheend_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/high/Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_high_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/high/Voices.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_high_voices_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/memories/Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_memories_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/memories/Voices.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_memories_voices_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/milf/Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_milf_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/milf/Voices.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_milf_voices_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/monster/Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_monster_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/monster/Voices.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_monster_voices_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/philly/Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_philly_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/philly/Voices.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_philly_voices_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/pico/Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_pico_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/pico/Voices.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_pico_voices_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/roses/Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_roses_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/roses/Voices.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_roses_voices_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/satin-panties/Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_satin_panties_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/satin-panties/Voices.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_satin_panties_voices_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/senpai/Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_senpai_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/senpai/Voices.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_senpai_voices_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/south/Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_south_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/south/Voices.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_south_voices_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/spookeez/Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_spookeez_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/spookeez/Voices.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_spookeez_voices_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/test/Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_test_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/test/Voices.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_test_voices_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/thorns/Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_thorns_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/thorns/Voices.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_thorns_voices_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/tutorial/Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_tutorial_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/winter-horrorland/Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_winter_horrorland_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/winter-horrorland/Voices.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_winter_horrorland_voices_mp3 extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/backspace.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_backspace_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/backspace.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_backspace_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/bad.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_bad_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/bb/bb-lipsync_assets.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_bb_bb_lipsync_assets_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/bb/bb-lipsync_assets.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_bb_bb_lipsync_assets_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/bb/bbTired.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_bb_bbtired_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/bb/bbTired.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_bb_bbtired_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/bb/BB_Sprite_Sheet.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_bb_bb_sprite_sheet_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/bb/BB_Sprite_Sheet.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_bb_bb_sprite_sheet_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/bb/beatboxonly.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_bb_beatboxonly_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/bb/beatboxonly.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_bb_beatboxonly_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/bb/boyfriendWorried.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_bb_boyfriendworried_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/bb/boyfriendWorried.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_bb_boyfriendworried_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/bb/playablebb-lipsync-assets.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_bb_playablebb_lipsync_assets_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/bb/playablebb-lipsync-assets.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_bb_playablebb_lipsync_assets_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/bb/playablebb.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_bb_playablebb_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/bb/playablebb.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_bb_playablebb_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/bb/Youwinlipsync.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_bb_youwinlipsync_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/bb/Youwinlipsync.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_bb_youwinlipsync_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/beatboxonly.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_beatboxonly_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/beatboxonly.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_beatboxonly_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/BOYFRIEND.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_boyfriend_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/BOYFRIEND.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_boyfriend_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/combo.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_combo_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/Conversation1.txt") @:noCompletion #if display private #end class __ASSET__assets_shared_images_conversation1_txt extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/DADDY_DEAREST.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_daddy_dearest_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/DADDY_DEAREST.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_daddy_dearest_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/GF_assets.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_gf_assets_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/GF_assets.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_gf_assets_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/go.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_go_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/good.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_good_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/grafix.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_grafix_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/healthBar.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_healthbar_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/images-go-here.txt") @:noCompletion #if display private #end class __ASSET__assets_shared_images_images_go_here_txt extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/lol.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_lol_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/lose.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_lose_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/lose.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_lose_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/NOTE_assets.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_note_assets_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/NOTE_assets.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_note_assets_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/pauseAlt/bfLol.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_pausealt_bflol_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/pauseAlt/bfLol.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_pausealt_bflol_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/pauseAlt/pauseBG.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_pausealt_pausebg_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/pauseAlt/pauseUI.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_pausealt_pauseui_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/pauseAlt/pauseUI.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_pausealt_pauseui_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/ready.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_ready_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/restart.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_restart_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/SBOYFRIEND.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_sboyfriend_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/SBOYFRIEND.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_sboyfriend_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/screencapTierImage.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_screencaptierimage_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/set.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_set_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/sexy zone/Shitpost2eletricbooglaoostarr-shrimp.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_sexy_zone_shitpost2eletricbooglaoostarr_shrimp_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/shit.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_shit_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/ShitpostStarr-shrimp.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_shitpoststarr_shrimp_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/sick.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_sick_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/speech_bubble_talking.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_speech_bubble_talking_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/speech_bubble_talking.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_speech_bubble_talking_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/stageback.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_stageback_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/stagecurtains.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_stagecurtains_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/stagefront.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_stagefront_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/stage_light.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_stage_light_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/week54prototype.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_week54prototype_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/zzzzzzzz.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_zzzzzzzz_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/music/breakfast.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_music_breakfast_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/music/CougarVa-_Why_are_you_like_this_lol.wav") @:noCompletion #if display private #end class __ASSET__assets_shared_music_cougarva__why_are_you_like_this_lol_wav extends haxe.io.Bytes {}
@:keep @:file("assets/shared/music/gameOver.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_music_gameover_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/music/gameOverEnd.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_music_gameoverend_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/ANGRY.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_angry_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/ANGRY_TEXT_BOX.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_angry_text_box_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/badnoise1.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_badnoise1_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/badnoise2.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_badnoise2_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/badnoise3.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_badnoise3_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/bbLines/bbDead.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_bblines_bbdead_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/bbText.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_bbtext_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/bfText.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_bftext_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/carPass0.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_carpass0_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/carPass1.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_carpass1_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/clickText.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_clicktext_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/fnf_loss_sfx-pixel.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_fnf_loss_sfx_pixel_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/fnf_loss_sfx.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_fnf_loss_sfx_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/GF_1.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_gf_1_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/GF_2.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_gf_2_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/GF_3.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_gf_3_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/GF_4.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_gf_4_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/intro1-pixel.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_intro1_pixel_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/intro1.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_intro1_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/intro2-pixel.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_intro2_pixel_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/intro2.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_intro2_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/intro3-pixel.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_intro3_pixel_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/intro3.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_intro3_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/introGo-pixel.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_introgo_pixel_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/introGo.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_introgo_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/Lights_Shut_off.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_lights_shut_off_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/Lights_Turn_On.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_lights_turn_on_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/missnote1.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_missnote1_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/missnote2.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_missnote2_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/missnote3.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_missnote3_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/pixelText.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_pixeltext_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/Senpai_Dies.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_senpai_dies_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/sounds-go-here.txt") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_sounds_go_here_txt extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/soundTest.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_soundtest_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/thunder_1.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_thunder_1_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/thunder_2.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_thunder_2_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/train_passes.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_train_passes_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/tutorial/tutorial_stuff_here.txt") @:noCompletion #if display private #end class __ASSET__assets_tutorial_tutorial_stuff_here_txt extends haxe.io.Bytes {}
@:keep @:file("assets/week1/week1_stuff_here.txt") @:noCompletion #if display private #end class __ASSET__assets_week1_week1_stuff_here_txt extends haxe.io.Bytes {}
@:keep @:image("assets/week2/images/halloween_bg.png") @:noCompletion #if display private #end class __ASSET__assets_week2_images_halloween_bg_png extends lime.graphics.Image {}
@:keep @:file("assets/week2/images/halloween_bg.xml") @:noCompletion #if display private #end class __ASSET__assets_week2_images_halloween_bg_xml extends haxe.io.Bytes {}
@:keep @:image("assets/week2/images/Monster_Assets.png") @:noCompletion #if display private #end class __ASSET__assets_week2_images_monster_assets_png extends lime.graphics.Image {}
@:keep @:file("assets/week2/images/Monster_Assets.xml") @:noCompletion #if display private #end class __ASSET__assets_week2_images_monster_assets_xml extends haxe.io.Bytes {}
@:keep @:image("assets/week2/images/spooky_kids_assets.png") @:noCompletion #if display private #end class __ASSET__assets_week2_images_spooky_kids_assets_png extends lime.graphics.Image {}
@:keep @:file("assets/week2/images/spooky_kids_assets.xml") @:noCompletion #if display private #end class __ASSET__assets_week2_images_spooky_kids_assets_xml extends haxe.io.Bytes {}
@:keep @:file("assets/week2/week2_stuff_here.txt") @:noCompletion #if display private #end class __ASSET__assets_week2_week2_stuff_here_txt extends haxe.io.Bytes {}
@:keep @:image("assets/week3/images/philly/behindTrain.png") @:noCompletion #if display private #end class __ASSET__assets_week3_images_philly_behindtrain_png extends lime.graphics.Image {}
@:keep @:image("assets/week3/images/philly/city.png") @:noCompletion #if display private #end class __ASSET__assets_week3_images_philly_city_png extends lime.graphics.Image {}
@:keep @:image("assets/week3/images/philly/sky.png") @:noCompletion #if display private #end class __ASSET__assets_week3_images_philly_sky_png extends lime.graphics.Image {}
@:keep @:image("assets/week3/images/philly/street.png") @:noCompletion #if display private #end class __ASSET__assets_week3_images_philly_street_png extends lime.graphics.Image {}
@:keep @:image("assets/week3/images/philly/train.png") @:noCompletion #if display private #end class __ASSET__assets_week3_images_philly_train_png extends lime.graphics.Image {}
@:keep @:image("assets/week3/images/philly/win0.png") @:noCompletion #if display private #end class __ASSET__assets_week3_images_philly_win0_png extends lime.graphics.Image {}
@:keep @:image("assets/week3/images/philly/win1.png") @:noCompletion #if display private #end class __ASSET__assets_week3_images_philly_win1_png extends lime.graphics.Image {}
@:keep @:image("assets/week3/images/philly/win2.png") @:noCompletion #if display private #end class __ASSET__assets_week3_images_philly_win2_png extends lime.graphics.Image {}
@:keep @:image("assets/week3/images/philly/win3.png") @:noCompletion #if display private #end class __ASSET__assets_week3_images_philly_win3_png extends lime.graphics.Image {}
@:keep @:image("assets/week3/images/philly/win4.png") @:noCompletion #if display private #end class __ASSET__assets_week3_images_philly_win4_png extends lime.graphics.Image {}
@:keep @:image("assets/week3/images/Pico_FNF_assetss.png") @:noCompletion #if display private #end class __ASSET__assets_week3_images_pico_fnf_assetss_png extends lime.graphics.Image {}
@:keep @:file("assets/week3/images/Pico_FNF_assetss.xml") @:noCompletion #if display private #end class __ASSET__assets_week3_images_pico_fnf_assetss_xml extends haxe.io.Bytes {}
@:keep @:file("assets/week3/week3_stuff_here.txt") @:noCompletion #if display private #end class __ASSET__assets_week3_week3_stuff_here_txt extends haxe.io.Bytes {}
@:keep @:image("assets/week4/images/bfCar.png") @:noCompletion #if display private #end class __ASSET__assets_week4_images_bfcar_png extends lime.graphics.Image {}
@:keep @:file("assets/week4/images/bfCar.xml") @:noCompletion #if display private #end class __ASSET__assets_week4_images_bfcar_xml extends haxe.io.Bytes {}
@:keep @:image("assets/week4/images/gfCar.png") @:noCompletion #if display private #end class __ASSET__assets_week4_images_gfcar_png extends lime.graphics.Image {}
@:keep @:file("assets/week4/images/gfCar.xml") @:noCompletion #if display private #end class __ASSET__assets_week4_images_gfcar_xml extends haxe.io.Bytes {}
@:keep @:image("assets/week4/images/limo/bgLimo.png") @:noCompletion #if display private #end class __ASSET__assets_week4_images_limo_bglimo_png extends lime.graphics.Image {}
@:keep @:file("assets/week4/images/limo/bgLimo.xml") @:noCompletion #if display private #end class __ASSET__assets_week4_images_limo_bglimo_xml extends haxe.io.Bytes {}
@:keep @:image("assets/week4/images/limo/dumb.png") @:noCompletion #if display private #end class __ASSET__assets_week4_images_limo_dumb_png extends lime.graphics.Image {}
@:keep @:image("assets/week4/images/limo/fastCarLol.png") @:noCompletion #if display private #end class __ASSET__assets_week4_images_limo_fastcarlol_png extends lime.graphics.Image {}
@:keep @:image("assets/week4/images/limo/limoDancer.png") @:noCompletion #if display private #end class __ASSET__assets_week4_images_limo_limodancer_png extends lime.graphics.Image {}
@:keep @:file("assets/week4/images/limo/limoDancer.xml") @:noCompletion #if display private #end class __ASSET__assets_week4_images_limo_limodancer_xml extends haxe.io.Bytes {}
@:keep @:image("assets/week4/images/limo/limoDrive.png") @:noCompletion #if display private #end class __ASSET__assets_week4_images_limo_limodrive_png extends lime.graphics.Image {}
@:keep @:file("assets/week4/images/limo/limoDrive.xml") @:noCompletion #if display private #end class __ASSET__assets_week4_images_limo_limodrive_xml extends haxe.io.Bytes {}
@:keep @:image("assets/week4/images/limo/limoOverlay.png") @:noCompletion #if display private #end class __ASSET__assets_week4_images_limo_limooverlay_png extends lime.graphics.Image {}
@:keep @:image("assets/week4/images/limo/limoSunset.png") @:noCompletion #if display private #end class __ASSET__assets_week4_images_limo_limosunset_png extends lime.graphics.Image {}
@:keep @:image("assets/week4/images/momCar.png") @:noCompletion #if display private #end class __ASSET__assets_week4_images_momcar_png extends lime.graphics.Image {}
@:keep @:file("assets/week4/images/momCar.xml") @:noCompletion #if display private #end class __ASSET__assets_week4_images_momcar_xml extends haxe.io.Bytes {}
@:keep @:image("assets/week4/images/Mom_Assets.png") @:noCompletion #if display private #end class __ASSET__assets_week4_images_mom_assets_png extends lime.graphics.Image {}
@:keep @:file("assets/week4/images/Mom_Assets.xml") @:noCompletion #if display private #end class __ASSET__assets_week4_images_mom_assets_xml extends haxe.io.Bytes {}
@:keep @:file("assets/week4/week4_stuff_here.txt") @:noCompletion #if display private #end class __ASSET__assets_week4_week4_stuff_here_txt extends haxe.io.Bytes {}
@:keep @:image("assets/week5/images/christmas/bfChristmas.png") @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_bfchristmas_png extends lime.graphics.Image {}
@:keep @:file("assets/week5/images/christmas/bfChristmas.xml") @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_bfchristmas_xml extends haxe.io.Bytes {}
@:keep @:image("assets/week5/images/christmas/bgEscalator.png") @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_bgescalator_png extends lime.graphics.Image {}
@:keep @:image("assets/week5/images/christmas/bgWalls.png") @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_bgwalls_png extends lime.graphics.Image {}
@:keep @:image("assets/week5/images/christmas/bottomBop.png") @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_bottombop_png extends lime.graphics.Image {}
@:keep @:file("assets/week5/images/christmas/bottomBop.xml") @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_bottombop_xml extends haxe.io.Bytes {}
@:keep @:image("assets/week5/images/christmas/christmasTree.png") @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_christmastree_png extends lime.graphics.Image {}
@:keep @:image("assets/week5/images/christmas/christmasWall.png") @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_christmaswall_png extends lime.graphics.Image {}
@:keep @:image("assets/week5/images/christmas/evilBG.png") @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_evilbg_png extends lime.graphics.Image {}
@:keep @:image("assets/week5/images/christmas/evilSnow.png") @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_evilsnow_png extends lime.graphics.Image {}
@:keep @:image("assets/week5/images/christmas/evilTree.png") @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_eviltree_png extends lime.graphics.Image {}
@:keep @:image("assets/week5/images/christmas/fgSnow.png") @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_fgsnow_png extends lime.graphics.Image {}
@:keep @:image("assets/week5/images/christmas/gfChristmas.png") @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_gfchristmas_png extends lime.graphics.Image {}
@:keep @:file("assets/week5/images/christmas/gfChristmas.xml") @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_gfchristmas_xml extends haxe.io.Bytes {}
@:keep @:image("assets/week5/images/christmas/mom_dad_christmas_assets.png") @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_mom_dad_christmas_assets_png extends lime.graphics.Image {}
@:keep @:file("assets/week5/images/christmas/mom_dad_christmas_assets.xml") @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_mom_dad_christmas_assets_xml extends haxe.io.Bytes {}
@:keep @:image("assets/week5/images/christmas/monsterChristmas.png") @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_monsterchristmas_png extends lime.graphics.Image {}
@:keep @:file("assets/week5/images/christmas/monsterChristmas.xml") @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_monsterchristmas_xml extends haxe.io.Bytes {}
@:keep @:image("assets/week5/images/christmas/santa.png") @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_santa_png extends lime.graphics.Image {}
@:keep @:file("assets/week5/images/christmas/santa.xml") @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_santa_xml extends haxe.io.Bytes {}
@:keep @:image("assets/week5/images/christmas/upperBop.png") @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_upperbop_png extends lime.graphics.Image {}
@:keep @:file("assets/week5/images/christmas/upperBop.xml") @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_upperbop_xml extends haxe.io.Bytes {}
@:keep @:file("assets/week5/week5_stuff_here.txt") @:noCompletion #if display private #end class __ASSET__assets_week5_week5_stuff_here_txt extends haxe.io.Bytes {}
@:keep @:image("assets/week6/images/weeb/animatedEvilSchool.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_animatedevilschool_png extends lime.graphics.Image {}
@:keep @:file("assets/week6/images/weeb/animatedEvilSchool.xml") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_animatedevilschool_xml extends haxe.io.Bytes {}
@:keep @:image("assets/week6/images/weeb/bfPixel.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_bfpixel_png extends lime.graphics.Image {}
@:keep @:file("assets/week6/images/weeb/bfPixel.xml") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_bfpixel_xml extends haxe.io.Bytes {}
@:keep @:image("assets/week6/images/weeb/bfPixelsDEAD.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_bfpixelsdead_png extends lime.graphics.Image {}
@:keep @:file("assets/week6/images/weeb/bfPixelsDEAD.xml") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_bfpixelsdead_xml extends haxe.io.Bytes {}
@:keep @:image("assets/week6/images/weeb/bfPortrait.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_bfportrait_png extends lime.graphics.Image {}
@:keep @:file("assets/week6/images/weeb/bfPortrait.xml") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_bfportrait_xml extends haxe.io.Bytes {}
@:keep @:image("assets/week6/images/weeb/bgFreaks.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_bgfreaks_png extends lime.graphics.Image {}
@:keep @:file("assets/week6/images/weeb/bgFreaks.xml") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_bgfreaks_xml extends haxe.io.Bytes {}
@:keep @:image("assets/week6/images/weeb/evilSchoolBG.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_evilschoolbg_png extends lime.graphics.Image {}
@:keep @:image("assets/week6/images/weeb/evilSchoolFG.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_evilschoolfg_png extends lime.graphics.Image {}
@:keep @:image("assets/week6/images/weeb/gfPixel.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_gfpixel_png extends lime.graphics.Image {}
@:keep @:file("assets/week6/images/weeb/gfPixel.xml") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_gfpixel_xml extends haxe.io.Bytes {}
@:keep @:image("assets/week6/images/weeb/petals.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_petals_png extends lime.graphics.Image {}
@:keep @:file("assets/week6/images/weeb/petals.xml") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_petals_xml extends haxe.io.Bytes {}
@:keep @:image("assets/week6/images/weeb/pixelUI/arrowEnds.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_arrowends_png extends lime.graphics.Image {}
@:keep @:image("assets/week6/images/weeb/pixelUI/arrows-pixels.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_arrows_pixels_png extends lime.graphics.Image {}
@:keep @:image("assets/week6/images/weeb/pixelUI/bad-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_bad_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/week6/images/weeb/pixelUI/combo-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_combo_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/week6/images/weeb/pixelUI/date-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_date_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/week6/images/weeb/pixelUI/dialogueBox-evil.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_dialoguebox_evil_png extends lime.graphics.Image {}
@:keep @:file("assets/week6/images/weeb/pixelUI/dialogueBox-evil.xml") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_dialoguebox_evil_xml extends haxe.io.Bytes {}
@:keep @:image("assets/week6/images/weeb/pixelUI/dialogueBox-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_dialoguebox_pixel_png extends lime.graphics.Image {}
@:keep @:file("assets/week6/images/weeb/pixelUI/dialogueBox-pixel.xml") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_dialoguebox_pixel_xml extends haxe.io.Bytes {}
@:keep @:image("assets/week6/images/weeb/pixelUI/dialogueBox-senpaiMad.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_dialoguebox_senpaimad_png extends lime.graphics.Image {}
@:keep @:file("assets/week6/images/weeb/pixelUI/dialogueBox-senpaiMad.xml") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_dialoguebox_senpaimad_xml extends haxe.io.Bytes {}
@:keep @:image("assets/week6/images/weeb/pixelUI/good-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_good_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/week6/images/weeb/pixelUI/hand_textbox.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_hand_textbox_png extends lime.graphics.Image {}
@:keep @:image("assets/week6/images/weeb/pixelUI/num0-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_num0_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/week6/images/weeb/pixelUI/num1-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_num1_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/week6/images/weeb/pixelUI/num2-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_num2_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/week6/images/weeb/pixelUI/num3-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_num3_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/week6/images/weeb/pixelUI/num4-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_num4_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/week6/images/weeb/pixelUI/num5-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_num5_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/week6/images/weeb/pixelUI/num6-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_num6_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/week6/images/weeb/pixelUI/num7-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_num7_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/week6/images/weeb/pixelUI/num8-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_num8_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/week6/images/weeb/pixelUI/num9-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_num9_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/week6/images/weeb/pixelUI/ready-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_ready_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/week6/images/weeb/pixelUI/set-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_set_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/week6/images/weeb/pixelUI/shit-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_shit_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/week6/images/weeb/pixelUI/sick-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_sick_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/week6/images/weeb/senpai.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_senpai_png extends lime.graphics.Image {}
@:keep @:file("assets/week6/images/weeb/senpai.xml") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_senpai_xml extends haxe.io.Bytes {}
@:keep @:image("assets/week6/images/weeb/senpaiCrazy.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_senpaicrazy_png extends lime.graphics.Image {}
@:keep @:file("assets/week6/images/weeb/senpaiCrazy.xml") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_senpaicrazy_xml extends haxe.io.Bytes {}
@:keep @:image("assets/week6/images/weeb/senpaiPortrait.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_senpaiportrait_png extends lime.graphics.Image {}
@:keep @:file("assets/week6/images/weeb/senpaiPortrait.xml") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_senpaiportrait_xml extends haxe.io.Bytes {}
@:keep @:image("assets/week6/images/weeb/spirit.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_spirit_png extends lime.graphics.Image {}
@:keep @:file("assets/week6/images/weeb/spirit.txt") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_spirit_txt extends haxe.io.Bytes {}
@:keep @:image("assets/week6/images/weeb/spiritFaceForward.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_spiritfaceforward_png extends lime.graphics.Image {}
@:keep @:image("assets/week6/images/weeb/weebSchool.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_weebschool_png extends lime.graphics.Image {}
@:keep @:image("assets/week6/images/weeb/weebSky.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_weebsky_png extends lime.graphics.Image {}
@:keep @:image("assets/week6/images/weeb/weebStreet.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_weebstreet_png extends lime.graphics.Image {}
@:keep @:image("assets/week6/images/weeb/weebTrees.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_weebtrees_png extends lime.graphics.Image {}
@:keep @:file("assets/week6/images/weeb/weebTrees.txt") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_weebtrees_txt extends haxe.io.Bytes {}
@:keep @:image("assets/week6/images/weeb/weebTreesBack.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_weebtreesback_png extends lime.graphics.Image {}
@:keep @:file("assets/week6/music/gameOver-pixel.mp3") @:noCompletion #if display private #end class __ASSET__assets_week6_music_gameover_pixel_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/week6/music/gameOverEnd-pixel.mp3") @:noCompletion #if display private #end class __ASSET__assets_week6_music_gameoverend_pixel_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/week6/music/Lunchbox.mp3") @:noCompletion #if display private #end class __ASSET__assets_week6_music_lunchbox_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/week6/music/LunchboxScary.mp3") @:noCompletion #if display private #end class __ASSET__assets_week6_music_lunchboxscary_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/week6/week6_stuff_here.txt") @:noCompletion #if display private #end class __ASSET__assets_week6_week6_stuff_here_txt extends haxe.io.Bytes {}
@:keep @:image("assets/week7/images/cutscenes/aftermath0.png") @:noCompletion #if display private #end class __ASSET__assets_week7_images_cutscenes_aftermath0_png extends lime.graphics.Image {}
@:keep @:image("assets/week7/images/cutscenes/aftermath1.png") @:noCompletion #if display private #end class __ASSET__assets_week7_images_cutscenes_aftermath1_png extends lime.graphics.Image {}
@:keep @:image("assets/week7/images/cutscenes/aftermath2.png") @:noCompletion #if display private #end class __ASSET__assets_week7_images_cutscenes_aftermath2_png extends lime.graphics.Image {}
@:keep @:image("assets/week7/images/cutscenes/aftermath3.png") @:noCompletion #if display private #end class __ASSET__assets_week7_images_cutscenes_aftermath3_png extends lime.graphics.Image {}
@:keep @:image("assets/week7/images/cutscenes/intro1-1.png") @:noCompletion #if display private #end class __ASSET__assets_week7_images_cutscenes_intro1_1_png extends lime.graphics.Image {}
@:keep @:image("assets/week7/images/cutscenes/intro1-2.png") @:noCompletion #if display private #end class __ASSET__assets_week7_images_cutscenes_intro1_2_png extends lime.graphics.Image {}
@:keep @:image("assets/week7/images/cutscenes/intro1-3.png") @:noCompletion #if display private #end class __ASSET__assets_week7_images_cutscenes_intro1_3_png extends lime.graphics.Image {}
@:keep @:image("assets/week7/images/diabox/speech_bubble_talking.png") @:noCompletion #if display private #end class __ASSET__assets_week7_images_diabox_speech_bubble_talking_png extends lime.graphics.Image {}
@:keep @:file("assets/week7/images/diabox/speech_bubble_talking.xml") @:noCompletion #if display private #end class __ASSET__assets_week7_images_diabox_speech_bubble_talking_xml extends haxe.io.Bytes {}
@:keep @:image("assets/week7/images/dialoguePortraits/10-2-2020.png") @:noCompletion #if display private #end class __ASSET__assets_week7_images_dialogueportraits_10_2_2020_png extends lime.graphics.Image {}
@:keep @:image("assets/week7/images/dialoguePortraits/bb-1.png") @:noCompletion #if display private #end class __ASSET__assets_week7_images_dialogueportraits_bb_1_png extends lime.graphics.Image {}
@:keep @:image("assets/week7/images/dialoguePortraits/bb-2.png") @:noCompletion #if display private #end class __ASSET__assets_week7_images_dialogueportraits_bb_2_png extends lime.graphics.Image {}
@:keep @:image("assets/week7/images/dialoguePortraits/bb-3.png") @:noCompletion #if display private #end class __ASSET__assets_week7_images_dialogueportraits_bb_3_png extends lime.graphics.Image {}
@:keep @:image("assets/week7/images/dialoguePortraits/bb-4.png") @:noCompletion #if display private #end class __ASSET__assets_week7_images_dialogueportraits_bb_4_png extends lime.graphics.Image {}
@:keep @:image("assets/week7/images/dialoguePortraits/bb-5.png") @:noCompletion #if display private #end class __ASSET__assets_week7_images_dialogueportraits_bb_5_png extends lime.graphics.Image {}
@:keep @:image("assets/week7/images/dialoguePortraits/bf-1.png") @:noCompletion #if display private #end class __ASSET__assets_week7_images_dialogueportraits_bf_1_png extends lime.graphics.Image {}
@:keep @:image("assets/week7/images/dialoguePortraits/bf-2.png") @:noCompletion #if display private #end class __ASSET__assets_week7_images_dialogueportraits_bf_2_png extends lime.graphics.Image {}
@:keep @:image("assets/week7/images/dialoguePortraits/bf-3.png") @:noCompletion #if display private #end class __ASSET__assets_week7_images_dialogueportraits_bf_3_png extends lime.graphics.Image {}
@:keep @:image("assets/week7/images/dialoguePortraits/bf-4.png") @:noCompletion #if display private #end class __ASSET__assets_week7_images_dialogueportraits_bf_4_png extends lime.graphics.Image {}
@:keep @:image("assets/week7/images/dialoguePortraits/bf-5.png") @:noCompletion #if display private #end class __ASSET__assets_week7_images_dialogueportraits_bf_5_png extends lime.graphics.Image {}
@:keep @:image("assets/week7/images/dialoguePortraits/blank.png") @:noCompletion #if display private #end class __ASSET__assets_week7_images_dialogueportraits_blank_png extends lime.graphics.Image {}
@:keep @:image("assets/week7/images/prologue/distantcity.png") @:noCompletion #if display private #end class __ASSET__assets_week7_images_prologue_distantcity_png extends lime.graphics.Image {}
@:keep @:image("assets/week7/images/prologue/poll.png") @:noCompletion #if display private #end class __ASSET__assets_week7_images_prologue_poll_png extends lime.graphics.Image {}
@:keep @:image("assets/week7/images/prologue/rooftop.png") @:noCompletion #if display private #end class __ASSET__assets_week7_images_prologue_rooftop_png extends lime.graphics.Image {}
@:keep @:image("assets/week7/images/prologue/rooftopsky.png") @:noCompletion #if display private #end class __ASSET__assets_week7_images_prologue_rooftopsky_png extends lime.graphics.Image {}
@:keep @:image("assets/week7/images/prologue/win0.png") @:noCompletion #if display private #end class __ASSET__assets_week7_images_prologue_win0_png extends lime.graphics.Image {}
@:keep @:image("assets/week7/images/prologue/win1.png") @:noCompletion #if display private #end class __ASSET__assets_week7_images_prologue_win1_png extends lime.graphics.Image {}
@:keep @:image("assets/week7/images/prologue/win2.png") @:noCompletion #if display private #end class __ASSET__assets_week7_images_prologue_win2_png extends lime.graphics.Image {}
@:keep @:image("assets/week7/images/prologue/win3.png") @:noCompletion #if display private #end class __ASSET__assets_week7_images_prologue_win3_png extends lime.graphics.Image {}
@:keep @:image("assets/week7/images/prologue/win4.png") @:noCompletion #if display private #end class __ASSET__assets_week7_images_prologue_win4_png extends lime.graphics.Image {}
@:keep @:image("assets/week7/images/why_did_i_draw_thisStarr-shrimp_.png") @:noCompletion #if display private #end class __ASSET__assets_week7_images_why_did_i_draw_thisstarr_shrimp__png extends lime.graphics.Image {}
@:keep @:file("assets/week7/music/breakfast.mp3") @:noCompletion #if display private #end class __ASSET__assets_week7_music_breakfast_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/week7/music/dialogue/dialoguemusic.mp3") @:noCompletion #if display private #end class __ASSET__assets_week7_music_dialogue_dialoguemusic_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/week7/sounds/dialogVoice/alw/1.mp3") @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_alw_1_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/week7/sounds/dialogVoice/alw/2.mp3") @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_alw_2_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/week7/sounds/dialogVoice/alw/3.mp3") @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_alw_3_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/week7/sounds/dialogVoice/alw/4.mp3") @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_alw_4_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/week7/sounds/dialogVoice/alw/5.mp3") @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_alw_5_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/week7/sounds/dialogVoice/alw/6.mp3") @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_alw_6_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/week7/sounds/dialogVoice/alw/7.mp3") @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_alw_7_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/week7/sounds/dialogVoice/alw/8.mp3") @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_alw_8_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/week7/sounds/dialogVoice/end/1.mp3") @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_end_1_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/week7/sounds/dialogVoice/end/10.mp3") @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_end_10_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/week7/sounds/dialogVoice/end/11.mp3") @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_end_11_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/week7/sounds/dialogVoice/end/12.mp3") @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_end_12_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/week7/sounds/dialogVoice/end/13.mp3") @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_end_13_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/week7/sounds/dialogVoice/end/14.mp3") @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_end_14_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/week7/sounds/dialogVoice/end/15.mp3") @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_end_15_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/week7/sounds/dialogVoice/end/16.mp3") @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_end_16_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/week7/sounds/dialogVoice/end/17.mp3") @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_end_17_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/week7/sounds/dialogVoice/end/18.mp3") @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_end_18_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/week7/sounds/dialogVoice/end/19.mp3") @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_end_19_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/week7/sounds/dialogVoice/end/2.mp3") @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_end_2_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/week7/sounds/dialogVoice/end/20.mp3") @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_end_20_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/week7/sounds/dialogVoice/end/21.mp3") @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_end_21_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/week7/sounds/dialogVoice/end/22.mp3") @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_end_22_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/week7/sounds/dialogVoice/end/23.mp3") @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_end_23_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/week7/sounds/dialogVoice/end/3.mp3") @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_end_3_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/week7/sounds/dialogVoice/end/4.mp3") @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_end_4_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/week7/sounds/dialogVoice/end/5.mp3") @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_end_5_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/week7/sounds/dialogVoice/end/6.mp3") @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_end_6_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/week7/sounds/dialogVoice/end/7.mp3") @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_end_7_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/week7/sounds/dialogVoice/end/8.mp3") @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_end_8_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/week7/sounds/dialogVoice/end/9.mp3") @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_end_9_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/week7/sounds/dialogVoice/fam/1.mp3") @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_fam_1_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/week7/sounds/dialogVoice/fam/10.mp3") @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_fam_10_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/week7/sounds/dialogVoice/fam/11.mp3") @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_fam_11_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/week7/sounds/dialogVoice/fam/12.mp3") @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_fam_12_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/week7/sounds/dialogVoice/fam/13.mp3") @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_fam_13_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/week7/sounds/dialogVoice/fam/2.mp3") @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_fam_2_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/week7/sounds/dialogVoice/fam/3.mp3") @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_fam_3_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/week7/sounds/dialogVoice/fam/4.mp3") @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_fam_4_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/week7/sounds/dialogVoice/fam/5.mp3") @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_fam_5_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/week7/sounds/dialogVoice/fam/6.mp3") @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_fam_6_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/week7/sounds/dialogVoice/fam/7.mp3") @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_fam_7_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/week7/sounds/dialogVoice/fam/8.mp3") @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_fam_8_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/week7/sounds/dialogVoice/fam/9.mp3") @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_fam_9_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/week7/sounds/dialogVoice/hea/1.mp3") @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_hea_1_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/week7/sounds/dialogVoice/hea/2.mp3") @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_hea_2_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/week7/sounds/dialogVoice/hea/3.mp3") @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_hea_3_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/week7/sounds/dialogVoice/hea/4.mp3") @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_hea_4_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/week7/sounds/dialogVoice/hea/5.mp3") @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_hea_5_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/week7/sounds/dialogVoice/hea/6.mp3") @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_hea_6_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/week7/sounds/dialogVoice/hea/7.mp3") @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_hea_7_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/week7/sounds/dialogVoice/hea/8.mp3") @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_hea_8_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/week7/sounds/dialogVoice/hea/9.mp3") @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_hea_9_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/week7/sounds/dialogVoice/mem/1.mp3") @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_mem_1_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/week7/sounds/dialogVoice/mem/10.mp3") @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_mem_10_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/week7/sounds/dialogVoice/mem/2.mp3") @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_mem_2_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/week7/sounds/dialogVoice/mem/3.mp3") @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_mem_3_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/week7/sounds/dialogVoice/mem/4.mp3") @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_mem_4_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/week7/sounds/dialogVoice/mem/5.mp3") @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_mem_5_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/week7/sounds/dialogVoice/mem/6.mp3") @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_mem_6_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/week7/sounds/dialogVoice/mem/7.mp3") @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_mem_7_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/week7/sounds/dialogVoice/mem/8.mp3") @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_mem_8_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/week7/sounds/dialogVoice/mem/9.mp3") @:noCompletion #if display private #end class __ASSET__assets_week7_sounds_dialogvoice_mem_9_mp3 extends haxe.io.Bytes {}
@:keep @:file("art/readme.txt") @:noCompletion #if display private #end class __ASSET__do_not_readme_txt extends haxe.io.Bytes {}
@:keep @:file("CHANGELOG.md") @:noCompletion #if display private #end class __ASSET__changelog_txt extends haxe.io.Bytes {}
@:keep @:font("exportbb/debug/html5/obj/webfont/beatstreet.ttf") @:noCompletion #if display private #end class __ASSET__assets_fonts_beatstreet_ttf extends lime.text.Font {}
@:keep @:file("assets/fonts/fonts-go-here.txt") @:noCompletion #if display private #end class __ASSET__assets_fonts_fonts_go_here_txt extends haxe.io.Bytes {}
@:keep @:font("exportbb/debug/html5/obj/webfont/FridayFunkin-Regular.otf") @:noCompletion #if display private #end class __ASSET__assets_fonts_fridayfunkin_regular_otf extends lime.text.Font {}
@:keep @:font("exportbb/debug/html5/obj/webfont/FridayFunkin-Regular.ttf") @:noCompletion #if display private #end class __ASSET__assets_fonts_fridayfunkin_regular_ttf extends lime.text.Font {}
@:keep @:font("exportbb/debug/html5/obj/webfont/pixel.otf") @:noCompletion #if display private #end class __ASSET__assets_fonts_pixel_otf extends lime.text.Font {}
@:keep @:font("exportbb/debug/html5/obj/webfont/vcr.ttf") @:noCompletion #if display private #end class __ASSET__assets_fonts_vcr_ttf extends lime.text.Font {}
@:keep @:file("D:/HACKERMAN STUFF/HAXE/haxe/lib/flixel/4,9,0/assets/sounds/beep.mp3") @:noCompletion #if display private #end class __ASSET__flixel_sounds_beep_mp3 extends haxe.io.Bytes {}
@:keep @:file("D:/HACKERMAN STUFF/HAXE/haxe/lib/flixel/4,9,0/assets/sounds/flixel.mp3") @:noCompletion #if display private #end class __ASSET__flixel_sounds_flixel_mp3 extends haxe.io.Bytes {}
@:keep @:file("D:/HACKERMAN STUFF/HAXE/haxe/lib/flixel/4,9,0/assets/sounds/beep.ogg") @:noCompletion #if display private #end class __ASSET__flixel_sounds_beep_ogg extends haxe.io.Bytes {}
@:keep @:file("D:/HACKERMAN STUFF/HAXE/haxe/lib/flixel/4,9,0/assets/sounds/flixel.ogg") @:noCompletion #if display private #end class __ASSET__flixel_sounds_flixel_ogg extends haxe.io.Bytes {}
@:keep @:font("exportbb/debug/html5/obj/webfont/nokiafc22.ttf") @:noCompletion #if display private #end class __ASSET__flixel_fonts_nokiafc22_ttf extends lime.text.Font {}
@:keep @:font("exportbb/debug/html5/obj/webfont/monsterrat.ttf") @:noCompletion #if display private #end class __ASSET__flixel_fonts_monsterrat_ttf extends lime.text.Font {}
@:keep @:image("D:/HACKERMAN STUFF/HAXE/haxe/lib/flixel/4,9,0/assets/images/ui/button.png") @:noCompletion #if display private #end class __ASSET__flixel_images_ui_button_png extends lime.graphics.Image {}
@:keep @:image("D:/HACKERMAN STUFF/HAXE/haxe/lib/flixel/4,9,0/assets/images/logo/default.png") @:noCompletion #if display private #end class __ASSET__flixel_images_logo_default_png extends lime.graphics.Image {}
@:keep @:image("D:/HACKERMAN STUFF/HAXE/haxe/lib/flixel-ui/2,3,3/assets/images/box.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_box_png extends lime.graphics.Image {}
@:keep @:image("D:/HACKERMAN STUFF/HAXE/haxe/lib/flixel-ui/2,3,3/assets/images/button.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_png extends lime.graphics.Image {}
@:keep @:image("D:/HACKERMAN STUFF/HAXE/haxe/lib/flixel-ui/2,3,3/assets/images/button_arrow_down.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_arrow_down_png extends lime.graphics.Image {}
@:keep @:image("D:/HACKERMAN STUFF/HAXE/haxe/lib/flixel-ui/2,3,3/assets/images/button_arrow_left.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_arrow_left_png extends lime.graphics.Image {}
@:keep @:image("D:/HACKERMAN STUFF/HAXE/haxe/lib/flixel-ui/2,3,3/assets/images/button_arrow_right.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_arrow_right_png extends lime.graphics.Image {}
@:keep @:image("D:/HACKERMAN STUFF/HAXE/haxe/lib/flixel-ui/2,3,3/assets/images/button_arrow_up.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_arrow_up_png extends lime.graphics.Image {}
@:keep @:image("D:/HACKERMAN STUFF/HAXE/haxe/lib/flixel-ui/2,3,3/assets/images/button_thin.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_thin_png extends lime.graphics.Image {}
@:keep @:image("D:/HACKERMAN STUFF/HAXE/haxe/lib/flixel-ui/2,3,3/assets/images/button_toggle.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_toggle_png extends lime.graphics.Image {}
@:keep @:image("D:/HACKERMAN STUFF/HAXE/haxe/lib/flixel-ui/2,3,3/assets/images/check_box.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_check_box_png extends lime.graphics.Image {}
@:keep @:image("D:/HACKERMAN STUFF/HAXE/haxe/lib/flixel-ui/2,3,3/assets/images/check_mark.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_check_mark_png extends lime.graphics.Image {}
@:keep @:image("D:/HACKERMAN STUFF/HAXE/haxe/lib/flixel-ui/2,3,3/assets/images/chrome.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_chrome_png extends lime.graphics.Image {}
@:keep @:image("D:/HACKERMAN STUFF/HAXE/haxe/lib/flixel-ui/2,3,3/assets/images/chrome_flat.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_chrome_flat_png extends lime.graphics.Image {}
@:keep @:image("D:/HACKERMAN STUFF/HAXE/haxe/lib/flixel-ui/2,3,3/assets/images/chrome_inset.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_chrome_inset_png extends lime.graphics.Image {}
@:keep @:image("D:/HACKERMAN STUFF/HAXE/haxe/lib/flixel-ui/2,3,3/assets/images/chrome_light.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_chrome_light_png extends lime.graphics.Image {}
@:keep @:image("D:/HACKERMAN STUFF/HAXE/haxe/lib/flixel-ui/2,3,3/assets/images/dropdown_mark.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_dropdown_mark_png extends lime.graphics.Image {}
@:keep @:image("D:/HACKERMAN STUFF/HAXE/haxe/lib/flixel-ui/2,3,3/assets/images/finger_big.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_finger_big_png extends lime.graphics.Image {}
@:keep @:image("D:/HACKERMAN STUFF/HAXE/haxe/lib/flixel-ui/2,3,3/assets/images/finger_small.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_finger_small_png extends lime.graphics.Image {}
@:keep @:image("D:/HACKERMAN STUFF/HAXE/haxe/lib/flixel-ui/2,3,3/assets/images/hilight.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_hilight_png extends lime.graphics.Image {}
@:keep @:image("D:/HACKERMAN STUFF/HAXE/haxe/lib/flixel-ui/2,3,3/assets/images/invis.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_invis_png extends lime.graphics.Image {}
@:keep @:image("D:/HACKERMAN STUFF/HAXE/haxe/lib/flixel-ui/2,3,3/assets/images/minus_mark.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_minus_mark_png extends lime.graphics.Image {}
@:keep @:image("D:/HACKERMAN STUFF/HAXE/haxe/lib/flixel-ui/2,3,3/assets/images/plus_mark.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_plus_mark_png extends lime.graphics.Image {}
@:keep @:image("D:/HACKERMAN STUFF/HAXE/haxe/lib/flixel-ui/2,3,3/assets/images/radio.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_radio_png extends lime.graphics.Image {}
@:keep @:image("D:/HACKERMAN STUFF/HAXE/haxe/lib/flixel-ui/2,3,3/assets/images/radio_dot.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_radio_dot_png extends lime.graphics.Image {}
@:keep @:image("D:/HACKERMAN STUFF/HAXE/haxe/lib/flixel-ui/2,3,3/assets/images/swatch.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_swatch_png extends lime.graphics.Image {}
@:keep @:image("D:/HACKERMAN STUFF/HAXE/haxe/lib/flixel-ui/2,3,3/assets/images/tab.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_tab_png extends lime.graphics.Image {}
@:keep @:image("D:/HACKERMAN STUFF/HAXE/haxe/lib/flixel-ui/2,3,3/assets/images/tab_back.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_tab_back_png extends lime.graphics.Image {}
@:keep @:image("D:/HACKERMAN STUFF/HAXE/haxe/lib/flixel-ui/2,3,3/assets/images/tooltip_arrow.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_tooltip_arrow_png extends lime.graphics.Image {}
@:keep @:file("D:/HACKERMAN STUFF/HAXE/haxe/lib/flixel-ui/2,3,3/assets/xml/defaults.xml") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_xml_defaults_xml extends haxe.io.Bytes {}
@:keep @:file("D:/HACKERMAN STUFF/HAXE/haxe/lib/flixel-ui/2,3,3/assets/xml/default_loading_screen.xml") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_xml_default_loading_screen_xml extends haxe.io.Bytes {}
@:keep @:file("D:/HACKERMAN STUFF/HAXE/haxe/lib/flixel-ui/2,3,3/assets/xml/default_popup.xml") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_xml_default_popup_xml extends haxe.io.Bytes {}
@:keep @:file("") @:noCompletion #if display private #end class __ASSET__manifest_default_json extends haxe.io.Bytes {}



#else

@:keep @:expose('__ASSET__assets_fonts_beatstreet_ttf') @:noCompletion #if display private #end class __ASSET__assets_fonts_beatstreet_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "assets/fonts/beatstreet"; #else ascender = 712; descender = -580; height = 1292; numGlyphs = 129; underlinePosition = -100; underlineThickness = 50; unitsPerEM = 1000; #end name = "Beatstreet"; super (); }}
@:keep @:expose('__ASSET__assets_fonts_fridayfunkin_regular_otf') @:noCompletion #if display private #end class __ASSET__assets_fonts_fridayfunkin_regular_otf extends lime.text.Font { public function new () { #if !html5 __fontPath = "assets/fonts/FridayFunkin-Regular"; #else ascender = 698; descender = -113; height = 901; numGlyphs = 65; underlinePosition = -100; underlineThickness = 50; unitsPerEM = 1000; #end name = "Friday Funkin Regular"; super (); }}
@:keep @:expose('__ASSET__assets_fonts_fridayfunkin_regular_ttf') @:noCompletion #if display private #end class __ASSET__assets_fonts_fridayfunkin_regular_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "assets/fonts/FridayFunkin-Regular"; #else ascender = 698; descender = -113; height = 901; numGlyphs = 65; underlinePosition = -100; underlineThickness = 50; unitsPerEM = 1000; #end name = "Friday Funkin Regular"; super (); }}
@:keep @:expose('__ASSET__assets_fonts_pixel_otf') @:noCompletion #if display private #end class __ASSET__assets_fonts_pixel_otf extends lime.text.Font { public function new () { #if !html5 __fontPath = "assets/fonts/pixel"; #else ascender = 1125; descender = -250; height = 1375; numGlyphs = 262; underlinePosition = -143; underlineThickness = 20; unitsPerEM = 1000; #end name = "Pixel Arial 11 Bold"; super (); }}
@:keep @:expose('__ASSET__assets_fonts_vcr_ttf') @:noCompletion #if display private #end class __ASSET__assets_fonts_vcr_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "assets/fonts/vcr"; #else ascender = 1800; descender = 0; height = 2000; numGlyphs = 204; underlinePosition = -292; underlineThickness = 150; unitsPerEM = 2048; #end name = "VCR OSD Mono"; super (); }}
@:keep @:expose('__ASSET__flixel_fonts_nokiafc22_ttf') @:noCompletion #if display private #end class __ASSET__flixel_fonts_nokiafc22_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "flixel/fonts/nokiafc22"; #else ascender = 2048; descender = -512; height = 2816; numGlyphs = 172; underlinePosition = -640; underlineThickness = 256; unitsPerEM = 2048; #end name = "Nokia Cellphone FC Small"; super (); }}
@:keep @:expose('__ASSET__flixel_fonts_monsterrat_ttf') @:noCompletion #if display private #end class __ASSET__flixel_fonts_monsterrat_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "flixel/fonts/monsterrat"; #else ascender = 968; descender = -251; height = 1219; numGlyphs = 263; underlinePosition = -150; underlineThickness = 50; unitsPerEM = 1000; #end name = "Monsterrat"; super (); }}


#end

#if (openfl && !flash)

#if html5
@:keep @:expose('__ASSET__OPENFL__assets_fonts_beatstreet_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__assets_fonts_beatstreet_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__assets_fonts_beatstreet_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__assets_fonts_fridayfunkin_regular_otf') @:noCompletion #if display private #end class __ASSET__OPENFL__assets_fonts_fridayfunkin_regular_otf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__assets_fonts_fridayfunkin_regular_otf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__assets_fonts_fridayfunkin_regular_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__assets_fonts_fridayfunkin_regular_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__assets_fonts_fridayfunkin_regular_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__assets_fonts_pixel_otf') @:noCompletion #if display private #end class __ASSET__OPENFL__assets_fonts_pixel_otf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__assets_fonts_pixel_otf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__assets_fonts_vcr_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__assets_fonts_vcr_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__assets_fonts_vcr_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__flixel_fonts_nokiafc22_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__flixel_fonts_nokiafc22_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__flixel_fonts_nokiafc22_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__flixel_fonts_monsterrat_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__flixel_fonts_monsterrat_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__flixel_fonts_monsterrat_ttf ()); super (); }}

#else
@:keep @:expose('__ASSET__OPENFL__assets_fonts_beatstreet_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__assets_fonts_beatstreet_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__assets_fonts_beatstreet_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__assets_fonts_fridayfunkin_regular_otf') @:noCompletion #if display private #end class __ASSET__OPENFL__assets_fonts_fridayfunkin_regular_otf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__assets_fonts_fridayfunkin_regular_otf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__assets_fonts_fridayfunkin_regular_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__assets_fonts_fridayfunkin_regular_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__assets_fonts_fridayfunkin_regular_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__assets_fonts_pixel_otf') @:noCompletion #if display private #end class __ASSET__OPENFL__assets_fonts_pixel_otf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__assets_fonts_pixel_otf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__assets_fonts_vcr_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__assets_fonts_vcr_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__assets_fonts_vcr_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__flixel_fonts_nokiafc22_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__flixel_fonts_nokiafc22_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__flixel_fonts_nokiafc22_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__flixel_fonts_monsterrat_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__flixel_fonts_monsterrat_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__flixel_fonts_monsterrat_ttf ()); super (); }}

#end

#end
#end

#end
