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
		openfl.text.Font.registerFont (__ASSET__OPENFL__assets_fonts_vcr_ttf);
		openfl.text.Font.registerFont (__ASSET__OPENFL__assets_fonts_pixel_otf);
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

		data = '{"name":null,"assets":"aoy4:pathy33:assets%2Fimages%2Flimo%2Fdumb.pngy4:sizei14442y4:typey5:IMAGEy2:idR1y7:preloadtgoR0y39:assets%2Fimages%2Flimo%2FfastCarLol.pngR2i100427R3R4R5R7R6tgoR0y39:assets%2Fimages%2Flimo%2FlimoDancer.xmlR2i4675R3y4:TEXTR5R8R6tgoR0y39:assets%2Fimages%2Flimo%2FlimoDancer.pngR2i167770R3R4R5R10R6tgoR0y39:assets%2Fimages%2Flimo%2FlimoSunset.pngR2i487931R3R4R5R11R6tgoR0y40:assets%2Fimages%2Flimo%2FlimoOverlay.pngR2i446804R3R4R5R12R6tgoR0y35:assets%2Fimages%2Flimo%2FbgLimo.pngR2i303832R3R4R5R13R6tgoR0y35:assets%2Fimages%2Flimo%2FbgLimo.xmlR2i794R3R9R5R14R6tgoR0y38:assets%2Fimages%2Flimo%2FlimoDrive.pngR2i275001R3R4R5R15R6tgoR0y38:assets%2Fimages%2Flimo%2FlimoDrive.xmlR2i515R3R9R5R16R6tgoR0y44:assets%2Fimages%2Fspooky_kids_assets_old.pngR2i175573R3R4R5R17R6tgoR0y54:assets%2Fimages%2Fcampaign_menu_UI_characters_orig.pngR2i2073668R3R4R5R18R6tgoR0y44:assets%2Fimages%2Fspooky_kids_assets_old.xmlR2i12390R3R9R5R19R6tgoR0y33:assets%2Fimages%2Fstage_light.pngR2i2233R3R4R5R20R6tgoR0y26:assets%2Fimages%2Fgood.pngR2i3622R3R4R5R21R6tgoR0y26:assets%2Fimages%2Fshit.pngR2i4946R3R4R5R22R6tgoR0y27:assets%2Fimages%2FbfCar.pngR2i477004R3R4R5R23R6tgoR0y27:assets%2Fimages%2Fcombo.pngR2i4165R3R4R5R24R6tgoR0y27:assets%2Fimages%2FbfCar.xmlR2i38250R3R9R5R25R6tgoR0y42:assets%2Fimages%2Fweeb%2FweebTreesBack.pngR2i658R3R4R5R26R6tgoR0y35:assets%2Fimages%2Fweeb%2Fsenpai.pngR2i30275R3R4R5R27R6tgoR0y35:assets%2Fimages%2Fweeb%2Fsenpai.xmlR2i14911R3R9R5R28R6tgoR0y38:assets%2Fimages%2Fweeb%2FweebTrees.pngR2i17765R3R4R5R29R6tgoR0y48:assets%2Fimages%2Fweeb%2FpixelUI%2FarrowEnds.pngR2i214R3R4R5R30R6tgoR0y51:assets%2Fimages%2Fweeb%2FpixelUI%2Fhand_textbox.pngR2i164R3R4R5R31R6tgoR0y49:assets%2Fimages%2Fweeb%2FpixelUI%2Fnum7-pixel.pngR2i139R3R4R5R32R6tgoR0y49:assets%2Fimages%2Fweeb%2FpixelUI%2Fdate-pixel.pngR2i503R3R4R5R33R6tgoR0y56:assets%2Fimages%2Fweeb%2FpixelUI%2FdialogueBox-pixel.xmlR2i680R3R9R5R34R6tgoR0y56:assets%2Fimages%2Fweeb%2FpixelUI%2FdialogueBox-pixel.pngR2i2012R3R4R5R35R6tgoR0y49:assets%2Fimages%2Fweeb%2FpixelUI%2Fnum1-pixel.pngR2i122R3R4R5R36R6tgoR0y60:assets%2Fimages%2Fweeb%2FpixelUI%2FdialogueBox-senpaiMad.xmlR2i1050R3R9R5R37R6tgoR0y60:assets%2Fimages%2Fweeb%2FpixelUI%2FdialogueBox-senpaiMad.pngR2i8159R3R4R5R38R6tgoR0y49:assets%2Fimages%2Fweeb%2FpixelUI%2Fgood-pixel.pngR2i218R3R4R5R39R6tgoR0y49:assets%2Fimages%2Fweeb%2FpixelUI%2Fnum6-pixel.pngR2i138R3R4R5R40R6tgoR0y49:assets%2Fimages%2Fweeb%2FpixelUI%2Fsick-pixel.pngR2i293R3R4R5R41R6tgoR0y48:assets%2Fimages%2Fweeb%2FpixelUI%2Fset-pixel.pngR2i467R3R4R5R42R6tgoR0y49:assets%2Fimages%2Fweeb%2FpixelUI%2Fnum0-pixel.pngR2i132R3R4R5R43R6tgoR0y49:assets%2Fimages%2Fweeb%2FpixelUI%2Fnum8-pixel.pngR2i129R3R4R5R44R6tgoR0y50:assets%2Fimages%2Fweeb%2FpixelUI%2Fcombo-pixel.pngR2i234R3R4R5R45R6tgoR0y49:assets%2Fimages%2Fweeb%2FpixelUI%2Fnum5-pixel.pngR2i136R3R4R5R46R6tgoR0y52:assets%2Fimages%2Fweeb%2FpixelUI%2Farrows-pixels.pngR2i1654R3R4R5R47R6tgoR0y49:assets%2Fimages%2Fweeb%2FpixelUI%2Fnum3-pixel.pngR2i137R3R4R5R48R6tgoR0y49:assets%2Fimages%2Fweeb%2FpixelUI%2Fshit-pixel.pngR2i282R3R4R5R49R6tgoR0y49:assets%2Fimages%2Fweeb%2FpixelUI%2Fnum9-pixel.pngR2i127R3R4R5R50R6tgoR0y55:assets%2Fimages%2Fweeb%2FpixelUI%2FdialogueBox-evil.xmlR2i1385R3R9R5R51R6tgoR0y55:assets%2Fimages%2Fweeb%2FpixelUI%2FdialogueBox-evil.pngR2i209R3R4R5R52R6tgoR0y50:assets%2Fimages%2Fweeb%2FpixelUI%2Fready-pixel.pngR2i525R3R4R5R53R6tgoR0y49:assets%2Fimages%2Fweeb%2FpixelUI%2Fnum4-pixel.pngR2i132R3R4R5R54R6tgoR0y48:assets%2Fimages%2Fweeb%2FpixelUI%2Fbad-pixel.pngR2i226R3R4R5R55R6tgoR0y49:assets%2Fimages%2Fweeb%2FpixelUI%2Fnum2-pixel.pngR2i139R3R4R5R56R6tgoR0y46:assets%2Fimages%2Fweeb%2FspiritFaceForward.pngR2i784R3R4R5R57R6tgoR0y41:assets%2Fimages%2Fweeb%2FevilSchoolFG.pngR2i1639R3R4R5R58R6tgoR0y39:assets%2Fimages%2Fweeb%2FweebStreet.pngR2i1776R3R4R5R59R6tgoR0y36:assets%2Fimages%2Fweeb%2FgfPixel.xmlR2i2414R3R9R5R60R6tgoR0y36:assets%2Fimages%2Fweeb%2FgfPixel.pngR2i6985R3R4R5R61R6tgoR0y38:assets%2Fimages%2Fweeb%2FweebTrees.txtR2i529R3R9R5R62R6tgoR0y39:assets%2Fimages%2Fweeb%2FweebSchool.pngR2i1653R3R4R5R63R6tgoR0y36:assets%2Fimages%2Fweeb%2FweebSky.pngR2i1271R3R4R5R64R6tgoR0y35:assets%2Fimages%2Fweeb%2Fpetals.xmlR2i4557R3R9R5R65R6tgoR0y35:assets%2Fimages%2Fweeb%2Fpetals.pngR2i1618R3R4R5R66R6tgoR0y35:assets%2Fimages%2Fweeb%2Fspirit.pngR2i82732R3R4R5R67R6tgoR0y40:assets%2Fimages%2Fweeb%2FsenpaiCrazy.xmlR2i19805R3R9R5R68R6tgoR0y41:assets%2Fimages%2Fweeb%2FbfPixelsDEAD.xmlR2i9974R3R9R5R69R6tgoR0y40:assets%2Fimages%2Fweeb%2FsenpaiCrazy.pngR2i5464R3R4R5R70R6tgoR0y41:assets%2Fimages%2Fweeb%2FbfPixelsDEAD.pngR2i25063R3R4R5R71R6tgoR0y43:assets%2Fimages%2Fweeb%2FsenpaiPortrait.pngR2i4242R3R4R5R72R6tgoR0y43:assets%2Fimages%2Fweeb%2FsenpaiPortrait.xmlR2i1103R3R9R5R73R6tgoR0y37:assets%2Fimages%2Fweeb%2FbgFreaks.xmlR2i5211R3R9R5R74R6tgoR0y37:assets%2Fimages%2Fweeb%2FbgFreaks.pngR2i30064R3R4R5R75R6tgoR0y39:assets%2Fimages%2Fweeb%2FbfPortrait.pngR2i3050R3R4R5R76R6tgoR0y39:assets%2Fimages%2Fweeb%2FbfPortrait.xmlR2i1126R3R9R5R77R6tgoR0y36:assets%2Fimages%2Fweeb%2FbfPixel.pngR2i11733R3R4R5R78R6tgoR0y36:assets%2Fimages%2Fweeb%2FbfPixel.xmlR2i11162R3R9R5R79R6tgoR0y35:assets%2Fimages%2Fweeb%2Fspirit.txtR2i2872R3R9R5R80R6tgoR0y47:assets%2Fimages%2Fweeb%2FanimatedEvilSchool.pngR2i109875R3R4R5R81R6tgoR0y47:assets%2Fimages%2Fweeb%2FanimatedEvilSchool.xmlR2i3887R3R9R5R82R6tgoR0y41:assets%2Fimages%2Fweeb%2FevilSchoolBG.pngR2i3891R3R4R5R83R6tgoR0y25:assets%2Fimages%2Flol.pngR2i2223R3R4R5R84R6tgoR0y35:assets%2Fimages%2Fstagecurtains.pngR2i26152R3R4R5R85R6tgoR0y41:assets%2Fimages%2Fcustompad%2Fabutton.pngR2i2118R3R4R5R86R6tgoR0y44:assets%2Fimages%2Fcustompad%2Frightarrow.pngR2i3151R3R4R5R87R6tgoR0y43:assets%2Fimages%2Fcustompad%2Fleftarrow.pngR2i3090R3R4R5R88R6tgoR0y41:assets%2Fimages%2Fcustompad%2Fuparrow.pngR2i3884R3R4R5R89R6tgoR0y41:assets%2Fimages%2Fcustompad%2Fbbutton.pngR2i1907R3R4R5R90R6tgoR0y43:assets%2Fimages%2Fcustompad%2Fdownarrow.pngR2i3442R3R4R5R91R6tgoR0y31:assets%2Fimages%2FBOYFRIEND.pngR2i575401R3R4R5R92R6tgoR0y31:assets%2Fimages%2FBOYFRIEND.xmlR2i34893R3R9R5R93R6tgoR0y32:assets%2Fimages%2FMom_Assets.xmlR2i8945R3R9R5R94R6tgoR0y32:assets%2Fimages%2FMom_Assets.pngR2i394729R3R4R5R95R6tgoR0y27:assets%2Fimages%2Fready.pngR2i12914R3R4R5R96R6tgoR0y28:assets%2Fimages%2FmenuBG.pngR2i100224R3R4R5R97R6tgoR0y26:assets%2Fimages%2Fnum4.pngR2i1460R3R4R5R98R6tgoR0y26:assets%2Fimages%2Fnum5.pngR2i1360R3R4R5R99R6tgoR0y30:assets%2Fimages%2FiconGrid.pngR2i41486R3R4R5R100R6tgoR0y26:assets%2Fimages%2Fnum7.pngR2i1252R3R4R5R101R6tgoR0y26:assets%2Fimages%2Fnum6.pngR2i1420R3R4R5R102R6tgoR0y26:assets%2Fimages%2Fnum2.pngR2i1367R3R4R5R103R6tgoR0y27:assets%2Fimages%2Freset.pngR2i3701R3R4R5R104R6tgoR0y26:assets%2Fimages%2Fnum3.pngR2i1397R3R4R5R105R6tgoR0y29:assets%2Fimages%2Frestart.pngR2i15315R3R4R5R106R6tgoR0y34:assets%2Fimages%2FgfDanceTitle.xmlR2i4259R3R9R5R107R6tgoR0y26:assets%2Fimages%2Fnum1.pngR2i1613R3R4R5R108R6tgoR0y34:assets%2Fimages%2FgfDanceTitle.pngR2i317272R3R4R5R109R6tgoR0y37:assets%2Fimages%2Fnewgrounds_logo.pngR2i15322R3R4R5R110R6tgoR0y49:assets%2Fimages%2Fcampaign_menu_UI_characters.pngR2i1015116R3R4R5R111R6tgoR0y26:assets%2Fimages%2Fnum0.pngR2i1790R3R4R5R112R6tgoR0y26:assets%2Fimages%2Flose.pngR2i63319R3R4R5R113R6tgoR0y49:assets%2Fimages%2Fcampaign_menu_UI_characters.xmlR2i22475R3R9R5R114R6tgoR0y26:assets%2Fimages%2Flose.xmlR2i4131R3R9R5R115R6tgoR0y25:assets%2Fimages%2Fset.pngR2i10341R3R4R5R116R6tgoR0y43:assets%2Fimages%2Fspeech_bubble_talking.xmlR2i4745R3R9R5R117R6tgoR0y33:assets%2Fimages%2FNOTE_assets.pngR2i145548R3R4R5R118R6tgoR0y43:assets%2Fimages%2Fspeech_bubble_talking.pngR2i81809R3R4R5R119R6tgoR0y33:assets%2Fimages%2FNOTE_assets.xmlR2i4970R3R9R5R120R6tgoR0y45:assets%2Fimages%2Fchristmas%2FbgEscalator.pngR2i47393R3R4R5R121R6tgoR0y42:assets%2Fimages%2Fchristmas%2FupperBop.xmlR2i2046R3R9R5R122R6tgoR0y42:assets%2Fimages%2Fchristmas%2FupperBop.pngR2i144053R3R4R5R123R6tgoR0y42:assets%2Fimages%2Fchristmas%2FevilTree.pngR2i36945R3R4R5R124R6tgoR0y45:assets%2Fimages%2Fchristmas%2FbfChristmas.xmlR2i41586R3R9R5R125R6tgoR0y45:assets%2Fimages%2Fchristmas%2FbfChristmas.pngR2i474899R3R4R5R126R6tgoR0y62:assets%2Fimages%2Fchristmas%2Fmom_dad_christmas_assetscomp.pngR2i272124R3R4R5R127R6tgoR0y50:assets%2Fimages%2Fchristmas%2FchristmasBG_Full.pngR2i378929R3R4R5R128R6tgoR0y43:assets%2Fimages%2Fchristmas%2FbottomBop.pngR2i200525R3R4R5R129R6tgoR0y43:assets%2Fimages%2Fchristmas%2FbottomBop.xmlR2i2276R3R9R5R130R6tgoR0y41:assets%2Fimages%2Fchristmas%2FbgWalls.pngR2i423392R3R4R5R131R6tgoR0y40:assets%2Fimages%2Fchristmas%2FevilBG.pngR2i569431R3R4R5R132R6tgoR0y39:assets%2Fimages%2Fchristmas%2Fsanta.xmlR2i2232R3R9R5R133R6tgoR0y39:assets%2Fimages%2Fchristmas%2Fsanta.pngR2i277650R3R4R5R134R6tgoR0y45:assets%2Fimages%2Fchristmas%2FgfChristmas.xmlR2i23084R3R9R5R135R6tgoR0y45:assets%2Fimages%2Fchristmas%2FgfChristmas.pngR2i4514226R3R4R5R136R6tgoR0y58:assets%2Fimages%2Fchristmas%2Fmom_dad_christmas_assets.pngR2i2220330R3R4R5R137R6tgoR0y58:assets%2Fimages%2Fchristmas%2Fmom_dad_christmas_assets.xmlR2i19356R3R9R5R138R6tgoR0y47:assets%2Fimages%2Fchristmas%2FchristmasWall.pngR2i561559R3R4R5R139R6tgoR0y40:assets%2Fimages%2Fchristmas%2FfgSnow.pngR2i4145R3R4R5R140R6tgoR0y47:assets%2Fimages%2Fchristmas%2FchristmasTree.pngR2i24039R3R4R5R141R6tgoR0y50:assets%2Fimages%2Fchristmas%2FmonsterChristmas.xmlR2i14973R3R9R5R142R6tgoR0y50:assets%2Fimages%2Fchristmas%2FmonsterChristmas.pngR2i803099R3R4R5R143R6tgoR0y42:assets%2Fimages%2Fchristmas%2FevilSnow.pngR2i5590R3R4R5R144R6tgoR0y31:assets%2Fimages%2Fbackspace.xmlR2i747R3R9R5R145R6tgoR0y31:assets%2Fimages%2FhealthBar.pngR2i210R3R4R5R146R6tgoR0y31:assets%2Fimages%2Fbackspace.pngR2i17790R3R4R5R147R6tgoR0y24:assets%2Fimages%2Fgo.pngR2i5880R3R4R5R148R6tgoR0y30:assets%2Fimages%2Falphabet.xmlR2i39069R3R9R5R149R6tgoR0y30:assets%2Fimages%2Falphabet.pngR2i70276R3R4R5R150R6tgoR0y26:assets%2Fimages%2Flogo.pngR2i20782R3R4R5R151R6tgoR0y41:assets%2Fimages%2Fvirtual-inputfunkin.txtR2i205R3R9R5R152R6tgoR0y38:assets%2Fimages%2FPico_FNF_assetss.pngR2i154949R3R4R5R153R6tgoR0y32:assets%2Fimages%2Fstagefront.pngR2i52768R3R4R5R154R6tgoR0y38:assets%2Fimages%2FPico_FNF_assetss.xmlR2i6163R3R9R5R155R6tgoR0y35:assets%2Fimages%2FmenuBGMagenta.pngR2i77375R3R4R5R156R6tgoR0y33:assets%2Fimages%2Fgfdancetest.xmlR2i4128R3R9R5R157R6tgoR0y33:assets%2Fimages%2Fgfdancetest.pngR2i533959R3R4R5R158R6tgoR0y31:assets%2Fimages%2Fstageback.pngR2i3394R3R4R5R159R6tgoR0y37:assets%2Fimages%2Fphilly%2Fstreet.pngR2i65552R3R4R5R160R6tgoR0y36:assets%2Fimages%2Fphilly%2Ftrain.pngR2i59731R3R4R5R161R6tgoR0y35:assets%2Fimages%2Fphilly%2Fcity.pngR2i93444R3R4R5R162R6tgoR0y35:assets%2Fimages%2Fphilly%2Fwin4.pngR2i7053R3R4R5R163R6tgoR0y42:assets%2Fimages%2Fphilly%2FbehindTrain.pngR2i11618R3R4R5R164R6tgoR0y35:assets%2Fimages%2Fphilly%2Fwin1.pngR2i7414R3R4R5R165R6tgoR0y35:assets%2Fimages%2Fphilly%2Fwin0.pngR2i7112R3R4R5R166R6tgoR0y35:assets%2Fimages%2Fphilly%2Fwin2.pngR2i7056R3R4R5R167R6tgoR0y35:assets%2Fimages%2Fphilly%2Fwin3.pngR2i7779R3R4R5R168R6tgoR0y34:assets%2Fimages%2Fphilly%2Fsky.pngR2i146565R3R4R5R169R6tgoR0y40:assets%2Fimages%2Fspooky_kids_assets.xmlR2i7363R3R9R5R170R6tgoR0y30:assets%2Fimages%2Fzzzzzzzz.pngR2i51570R3R4R5R171R6tgoR0y40:assets%2Fimages%2Fspooky_kids_assets.pngR2i123490R3R4R5R172R6tgoR0y32:assets%2Fimages%2FlogoBumpin.pngR2i98614R3R4R5R173R6tgoR0y40:assets%2Fimages%2FscreencapTierImage.pngR2i33231R3R4R5R174R6tgoR0y32:assets%2Fimages%2FlogoBumpin.xmlR2i2177R3R9R5R175R6tgoR0y26:assets%2Fimages%2Fnum8.pngR2i1993R3R4R5R176R6tgoR0y26:assets%2Fimages%2Fnum9.pngR2i1358R3R4R5R177R6tgoR0y45:assets%2Fimages%2Fcampaign_menu_UI_assets.pngR2i61606R3R4R5R178R6tgoR0y45:assets%2Fimages%2Fcampaign_menu_UI_assets.xmlR2i1893R3R9R5R179R6tgoR0y32:assets%2Fimages%2FmenuBGBlue.pngR2i94217R3R4R5R180R6tgoR0y35:assets%2Fimages%2FGF_assets_old.pngR2i1169551R3R4R5R181R6tgoR0y35:assets%2Fimages%2FGF_assets_old.xmlR2i15198R3R9R5R182R6tgoR0y26:assets%2Fimages%2Fsick.pngR2i5698R3R4R5R183R6tgoR0y41:assets%2Fimages%2Fvirtual-inputfunkin.pngR2i112164R3R4R5R184R6tgoR0y36:assets%2Fimages%2FMonster_Assets.xmlR2i14853R3R9R5R185R6tgoR0y36:assets%2Fimages%2FMonster_Assets.pngR2i470412R3R4R5R186R6tgoR0y42:assets%2Fimages%2FFNF_main_menu_assets.pngR2i120799R3R4R5R187R6tgoR0y42:assets%2Fimages%2FFNF_main_menu_assets.xmlR2i4755R3R9R5R188R6tgoR0y34:assets%2Fimages%2Fhalloween_bg.xmlR2i3663R3R9R5R189R6tgoR0y34:assets%2Fimages%2Fhalloween_bg.pngR2i2324238R3R4R5R190R6tgoR0y25:assets%2Fimages%2Fbad.pngR2i3201R3R4R5R191R6tgoR0y28:assets%2Fimages%2FmomCar.xmlR2i8902R3R9R5R192R6tgoR0y28:assets%2Fimages%2FmomCar.pngR2i805377R3R4R5R193R6tgoR0y28:assets%2Fimages%2Fgrafix.pngR2i37846R3R4R5R194R6tgoR0y36:assets%2Fimages%2Fimages-go-here.txtR2zR3R9R5R195R6tgoR0y41:assets%2Fimages%2Fhalloween_bg_mobile.pngR2i188281R3R4R5R196R6tgoR0y27:assets%2Fimages%2FgfCar.pngR2i433960R3R4R5R197R6tgoR0y31:assets%2Fimages%2FGF_assets.xmlR2i2693R3R9R5R198R6tgoR0y27:assets%2Fimages%2FgfCar.xmlR2i5000R3R9R5R199R6tgoR0y31:assets%2Fimages%2FGF_assets.pngR2i161345R3R4R5R200R6tgoR0y35:assets%2Fimages%2FDADDY_DEAREST.xmlR2i10594R3R9R5R201R6tgoR0y34:assets%2Fimages%2Fgftutsmaller.xmlR2i15071R3R9R5R202R6tgoR0y35:assets%2Fimages%2FDADDY_DEAREST.pngR2i163770R3R4R5R203R6tgoR0y34:assets%2Fimages%2Fgftutsmaller.pngR2i423825R3R4R5R204R6tgoR0y32:assets%2Fimages%2FtitleEnter.xmlR2i4875R3R9R5R205R6tgoR0y31:assets%2Fimages%2FmenuDesat.pngR2i110550R3R4R5R206R6tgoR0y32:assets%2Fimages%2FtitleEnter.pngR2i419063R3R4R5R207R6tgoR0y47:assets%2Fdata%2Fdadbattle%2Fdadbattle-hard.jsonR2i34945R3R9R5R208R6tgoR0y47:assets%2Fdata%2Fdadbattle%2Fdadbattle-easy.jsonR2i28153R3R9R5R209R6tgoR0y42:assets%2Fdata%2Fdadbattle%2Fdadbattle.jsonR2i30225R3R9R5R210R6tgoR0y34:assets%2Fdata%2Fdata-goes-here.txtR2zR3R9R5R211R6tgoR0y41:assets%2Fdata%2Froses%2FrosesDialogue.txtR2i153R3R9R5R212R6tgoR0y39:assets%2Fdata%2Froses%2Froses-hard.jsonR2i34216R3R9R5R213R6tgoR0y39:assets%2Fdata%2Froses%2Froses-easy.jsonR2i27016R3R9R5R214R6tgoR0y34:assets%2Fdata%2Froses%2Froses.jsonR2i31159R3R9R5R215R6tgoR0y41:assets%2Fdata%2Feggnog%2Feggnog-hard.jsonR2i141118R3R9R5R216R6tgoR0y41:assets%2Fdata%2Feggnog%2Feggnog-easy.jsonR2i32768R3R9R5R217R6tgoR0y36:assets%2Fdata%2Feggnog%2Feggnog.jsonR2i35674R3R9R5R218R6tgoR0y45:assets%2Fdata%2Ftutorial%2Ftutorial-easy.jsonR2i5744R3R9R5R219R6tgoR0y45:assets%2Fdata%2Ftutorial%2Ftutorial-hard.jsonR2i9509R3R9R5R220R6tgoR0y40:assets%2Fdata%2Ftutorial%2Ftutorial.jsonR2i5744R3R9R5R221R6tgoR0y29:assets%2Fdata%2Fmain-view.xmlR2i123R3R9R5R222R6tgoR0y37:assets%2Fdata%2Fhigh%2Fhigh-easy.jsonR2i34032R3R9R5R223R6tgoR0y37:assets%2Fdata%2Fhigh%2Fhigh-hard.jsonR2i26047R3R9R5R224R6tgoR0y32:assets%2Fdata%2Fhigh%2Fhigh.jsonR2i36383R3R9R5R225R6tgoR0y43:assets%2Fdata%2Fthorns%2FthornsDialogue.txtR2i305R3R9R5R226R6tgoR0y41:assets%2Fdata%2Fthorns%2Fthorns-easy.jsonR2i51981R3R9R5R227R6tgoR0y41:assets%2Fdata%2Fthorns%2Fthorns-hard.jsonR2i71799R3R9R5R228R6tgoR0y36:assets%2Fdata%2Fthorns%2Fthorns.jsonR2i60997R3R9R5R229R6tgoR0y45:assets%2Fdata%2Fspookeez%2Fspookeez-hard.jsonR2i32667R3R9R5R230R6tgoR0y45:assets%2Fdata%2Fspookeez%2Fspookeez-easy.jsonR2i28639R3R9R5R231R6tgoR0y40:assets%2Fdata%2Fspookeez%2Fspookeez.jsonR2i30435R3R9R5R232R6tgoR0y29:assets%2Fdata%2FintroText.txtR2i1230R3R9R5R233R6tgoR0y34:assets%2Fdata%2Fridge%2Fridge.jsonR2i34473R3R9R5R234R6tgoR0y31:assets%2Fdata%2Fcontrolsold.txtR2i324R3R9R5R235R6tgoR0y33:assets%2Fdata%2FspecialThanks.txtR2i284R3R9R5R236R6tgoR0y39:assets%2Fdata%2Ffresh%2Ffresh-hard.jsonR2i19185R3R9R5R237R6tgoR0y39:assets%2Fdata%2Ffresh%2Ffresh-easy.jsonR2i17647R3R9R5R238R6tgoR0y34:assets%2Fdata%2Ffresh%2Ffresh.jsonR2i18849R3R9R5R239R6tgoR0y37:assets%2Fdata%2Fpico%2Fpico-hard.jsonR2i29577R3R9R5R240R6tgoR0y37:assets%2Fdata%2Fpico%2Fpico-easy.jsonR2i16714R3R9R5R241R6tgoR0y32:assets%2Fdata%2Fpico%2Fpico.jsonR2i27699R3R9R5R242R6tgoR0y36:assets%2Fdata%2FfreeplaySonglist.txtR2i32R3R9R5R243R6tgoR0y28:assets%2Fdata%2Fcontrols.txtR2i17R3R9R5R244R6tgoR0y39:assets%2Fdata%2Fcocoa%2Fcocoa-easy.jsonR2i27364R3R9R5R245R6tgoR0y39:assets%2Fdata%2Fcocoa%2Fcocoa-hard.jsonR2i22841R3R9R5R246R6tgoR0y34:assets%2Fdata%2Fcocoa%2Fcocoa.jsonR2i30208R3R9R5R247R6tgoR0y41:assets%2Fdata%2Fsenpai%2Fsenpai-easy.jsonR2i45928R3R9R5R248R6tgoR0y41:assets%2Fdata%2Fsenpai%2Fsenpai-hard.jsonR2i51861R3R9R5R249R6tgoR0y43:assets%2Fdata%2Fsenpai%2FsenpaiDialogue.txtR2i162R3R9R5R250R6tgoR0y36:assets%2Fdata%2Fsenpai%2Fsenpai.jsonR2i49335R3R9R5R251R6tgoR0y34:assets%2Fdata%2Fsmash%2Fsmash.jsonR2i154R3R9R5R252R6tgoR0y55:assets%2Fdata%2Fsatin-panties%2Fsatin-panties-easy.jsonR2i41066R3R9R5R253R6tgoR0y55:assets%2Fdata%2Fsatin-panties%2Fsatin-panties-hard.jsonR2i54488R3R9R5R254R6tgoR0y50:assets%2Fdata%2Fsatin-panties%2Fsatin-panties.jsonR2i47192R3R9R5R255R6tgoR0y41:assets%2Fdata%2Fphilly%2Fphilly-easy.jsonR2i37684R3R9R5R256R6tgoR0y41:assets%2Fdata%2Fphilly%2Fphilly-hard.jsonR2i55578R3R9R5R257R6tgoR0y36:assets%2Fdata%2Fphilly%2Fphilly.jsonR2i44220R3R9R5R258R6tgoR0y63:assets%2Fdata%2Fwinter-horrorland%2Fwinter-horrorland-hard.jsonR2i171649R3R9R5R259R6tgoR0y63:assets%2Fdata%2Fwinter-horrorland%2Fwinter-horrorland-easy.jsonR2i133150R3R9R5R260R6tgoR0y58:assets%2Fdata%2Fwinter-horrorland%2Fwinter-horrorland.jsonR2i148926R3R9R5R261R6tgoR0y39:assets%2Fdata%2Fsouth%2Fsouth-hard.jsonR2i34392R3R9R5R262R6tgoR0y39:assets%2Fdata%2Fsouth%2Fsouth-easy.jsonR2i30048R3R9R5R263R6tgoR0y34:assets%2Fdata%2Fsouth%2Fsouth.jsonR2i22239R3R9R5R264R6tgoR0y37:assets%2Fdata%2Fmilf%2Fmilf-easy.jsonR2i66246R3R9R5R265R6tgoR0y37:assets%2Fdata%2Fmilf%2Fmilf-hard.jsonR2i79053R3R9R5R266R6tgoR0y32:assets%2Fdata%2Fmilf%2Fmilf.jsonR2i70461R3R9R5R267R6tgoR0y38:assets%2Fdata%2Fbopeebo%2Fbopeebo.jsonR2i12574R3R9R5R268R6tgoR0y43:assets%2Fdata%2Fbopeebo%2Fbopeebo-hard.jsonR2i12576R3R9R5R269R6tgoR0y43:assets%2Fdata%2Fbopeebo%2Fbopeebo-easy.jsonR2i12574R3R9R5R270R6tgoR0y33:assets%2Fdata%2FcharacterList.txtR2i133R3R9R5R271R6tgoR0y38:assets%2Fdata%2Fmonster%2Fmonster.jsonR2i51073R3R9R5R272R6tgoR0y38:assets%2Fdata%2Fblammed%2Fblammed.jsonR2i44638R3R9R5R273R6tgoR0y43:assets%2Fdata%2Fblammed%2Fblammed-easy.jsonR2i39025R3R9R5R274R6tgoR0y43:assets%2Fdata%2Fblammed%2Fblammed-hard.jsonR2i53646R3R9R5R275R6tgoR0y48:mods%2FintroMod%2F_append%2Fdata%2FintroText.txtR2i20R3R9R5R276goR0y17:mods%2Freadme.txtR2i90R3R9R5R277goR0y18:mods%2FmodList.txtR2i8R3R9R5R278goR2i1181760R3y5:MUSICR5y29:assets%2Fmusic%2FLunchbox.mp3y9:pathGroupaR280hR6tgoR2i4181760R3R279R5y34:assets%2Fmusic%2FThorns_Voices.mp3R281aR282hR6tgoR2i4244160R3R279R5y32:assets%2Fmusic%2FThorns_Inst.mp3R281aR283hR6tgoR2i1583631R3R279R5y35:assets%2Fmusic%2FDadbattle_Inst.mp3R281aR284hR6tgoR2i2400129R3R279R5y30:assets%2Fmusic%2Fbreakfast.mp3R281aR285hR6tgoR2i3760320R3R279R5y32:assets%2Fmusic%2FEggnog_Inst.mp3R281aR286hR6tgoR2i1320257R3R279R5y35:assets%2Fmusic%2FBlammed_Voices.mp3R281aR287hR6tgoR2i408097R3R279R5y32:assets%2Fmusic%2FTest_Voices.mp3R281aR288hR6tgoR2i2136608R3R279R5y35:assets%2Fmusic%2FMonster_Voices.mp3R281aR289hR6tgoR2i4276766R3R279R5y33:assets%2Fmusic%2FBlammed_Inst.mp3R281aR290hR6tgoR2i3282337R3R279R5y43:assets%2Fmusic%2FWinter-Horrorland_Inst.mp3R281aR291hR6tgoR2i2224344R3R279R5y31:assets%2Fmusic%2FRoses_Inst.mp3R281aR292hR6tgoR2i1263864R3R279R5y33:assets%2Fmusic%2FRoses_Voices.mp3R281aR293hR6tgoR2i3466970R3R279R5y37:assets%2Fmusic%2FDadbattle_Voices.mp3R281aR294hR6tgoR2i4616358R3R279R5y29:assets%2Fmusic%2FSpookeez.mp3R281aR295hR6tgoR2i2843793R3R279R5y28:assets%2Fmusic%2FMonster.mp3R281aR296hR6tgoR2i1880364R3R279R5y34:assets%2Fmusic%2FEggnog_Voices.mp3R281aR297hR6tgoR2i758037R3R279R5y35:assets%2Fmusic%2FBopeebo_Voices.mp3R281aR298hR6tgoR2i2201383R3R279R5y34:assets%2Fmusic%2FSpookeez_Inst.mp3R281aR299hR6tgoR2i1116460R3R279R5y32:assets%2Fmusic%2FPico_Voices.mp3R281aR300hR6tgoR2i210573R3R279R5y31:assets%2Fmusic%2FtitleShoot.mp3R281aR301hR6tgoR2i1920592R3R279R5y41:assets%2Fmusic%2FSatin-Panties_Voices.mp3R281aR302hR6tgoR2i2493719R3R279R5y32:assets%2Fmusic%2FMilf_Voices.mp3R281aR303hR6tgoR2i288391R3R279R5y32:assets%2Fmusic%2FgameOverEnd.mp3R281aR304hR6tgoR2i1177354R3R279R5y36:assets%2Fmusic%2FSpookeez_Voices.mp3R281aR305hR6tgoR2i4987200R3R279R5y30:assets%2Fmusic%2FMilf_Inst.mp3R281aR306hR6tgoR2i1507242R3R279R5y33:assets%2Fmusic%2FBopeebo_Inst.mp3R281aR307hR6tgoR2i4608000R3R279R5y31:assets%2Fmusic%2FCocoa_Inst.mp3R281aR308hR6tgoR2i2309657R3R279R5y31:assets%2Fmusic%2FfreakyMenu.mp3R281aR309hR6tgoR2i1535999R3R279R5y29:assets%2Fmusic%2FgameOver.mp3R281aR310hR6tgoR2i2112331R3R279R5y32:assets%2Fmusic%2FHigh_Voices.mp3R281aR311hR6tgoR2i3392782R3R279R5y30:assets%2Fmusic%2FPico_Inst.mp3R281aR312hR6tgoR2i1838304R3R279R5y34:assets%2Fmusic%2FSenpai_Voices.mp3R281aR313hR6tgoR2i1641082R3R279R5y31:assets%2Fmusic%2FFresh_Inst.mp3R281aR314hR6tgoR2i4096320R3R279R5y30:assets%2Fmusic%2FTest_Inst.mp3R281aR315hR6tgoR2i4224000R3R279R5y30:assets%2Fmusic%2FHigh_Inst.mp3R281aR316hR6tgoR2i3549517R3R279R5y31:assets%2Fmusic%2FSouth_Inst.mp3R281aR317hR6tgoR2i3072000R3R279R5y35:assets%2Fmusic%2FgameOver-pixel.mp3R281aR318hR6tgoR2i2031048R3R279R5y32:assets%2Fmusic%2FSenpai_Inst.mp3R281aR319hR6tgoR2i1072499R3R279R5y34:assets%2Fmusic%2FTutorial_Inst.mp3R281aR320hR6tgoR2i192000R3R279R5y38:assets%2Fmusic%2FgameOverEnd-pixel.mp3R281aR321hR6tgoR2i4059427R3R279R5y34:assets%2Fmusic%2FPhilly_Voices.mp3R281aR322hR6tgoR2i4059427R3R279R5y32:assets%2Fmusic%2FPhilly_Inst.mp3R281aR323hR6tgoR2i1920592R3R279R5y39:assets%2Fmusic%2FSatin-Panties_Inst.mp3R281aR324hR6tgoR2i1136376R3R279R5y33:assets%2Fmusic%2FSouth_Voices.mp3R281aR325hR6tgoR2i4003866R3R279R5y33:assets%2Fmusic%2FMonster_Inst.mp3R281aR326hR6tgoR2i1640560R3R279R5y33:assets%2Fmusic%2FFresh_Voices.mp3R281aR327hR6tgoR2i2304592R3R279R5y33:assets%2Fmusic%2FCocoa_Voices.mp3R281aR328hR6tgoR2i1508831R3R279R5y26:assets%2Fmusic%2Ftitle.mp3R281aR329hR6tgoR2i275451R3R279R5y34:assets%2Fmusic%2FLunchboxScary.mp3R281aR330hR6tgoR2i1876354R3R279R5y45:assets%2Fmusic%2FWinter-Horrorland_Voices.mp3R281aR331hR6tgoR2i74226R3R279R5y40:assets%2Fsounds%2Ffnf_loss_sfx-pixel.mp3R281aR332hR6tgoR2i1793R3R279R5y31:assets%2Fsounds%2FpixelText.mp3R281aR333hR6tgoR2i34480R3R279R5y26:assets%2Fsounds%2FGF_3.mp3R281aR334hR6tgoR2i34480R3R279R5y26:assets%2Fsounds%2FGF_2.mp3R281aR335hR6tgoR2i34480R3R279R5y26:assets%2Fsounds%2FGF_1.mp3R281aR336hR6tgoR2i53174R3R279R5y37:assets%2Fsounds%2FLights_Shut_off.mp3R281aR337hR6tgoR2i34480R3R279R5y26:assets%2Fsounds%2FGF_4.mp3R281aR338hR6tgoR2i9155R3R279R5y34:assets%2Fsounds%2Fintro1-pixel.mp3R281aR339hR6tgoR2i17762R3R279R5y32:assets%2Fsounds%2FcancelMenu.mp3R281aR340hR6tgoR2i12051R3R279R5y28:assets%2Fsounds%2Fintro2.mp3R281aR341hR6tgoR2i277982R3R279R5y34:assets%2Fsounds%2Ftrain_passes.mp3R281aR342hR6tgoR2i5888R3R279R5y31:assets%2Fsounds%2FclickText.mp3R281aR343hR6tgoR2i11582R3R279R5y28:assets%2Fsounds%2Fintro3.mp3R281aR344hR6tgoR2i11426R3R279R5y28:assets%2Fsounds%2Fintro1.mp3R281aR345hR6tgoR2i88390R3R279R5y36:assets%2Fsounds%2FLights_Turn_On.mp3R281aR346hR6tgoR2i2418R3R279R5y27:assets%2Fsounds%2FANGRY.mp3R281aR347hR6tgoR2i54621R3R279R5y30:assets%2Fsounds%2FcarPass0.mp3R281aR348hR6tgoR2i60069R3R279R5y30:assets%2Fsounds%2FcarPass1.mp3R281aR349hR6tgoR2i6339R3R279R5y32:assets%2Fsounds%2FfreshIntro.mp3R281aR350hR6tgoR2i83302R3R279R5y34:assets%2Fsounds%2Ffnf_loss_sfx.mp3R281aR351hR6tgoR2i91950R3R279R5y33:assets%2Fsounds%2FconfirmMenu.mp3R281aR352hR6tgoR2i34480R3R279R5y31:assets%2Fsounds%2Fbadnoise1.mp3R281aR353hR6tgoR2i274807R3R279R5y31:assets%2Fsounds%2Fthunder_2.mp3R281aR354hR6tgoR2i34480R3R279R5y31:assets%2Fsounds%2Fbadnoise2.mp3R281aR355hR6tgoR2i137925R3R279R5y31:assets%2Fsounds%2Fthunder_1.mp3R281aR356hR6tgoR2i9128R3R279R5y34:assets%2Fsounds%2Fintro3-pixel.mp3R281aR357hR6tgoR2i13254R3R279R5y29:assets%2Fsounds%2FintroGo.mp3R281aR358hR6tgoR2i34480R3R279R5y31:assets%2Fsounds%2Fbadnoise3.mp3R281aR359hR6tgoR2i21651R3R279R5y35:assets%2Fsounds%2FintroGo-pixel.mp3R281aR360hR6tgoR2i17762R3R279R5y32:assets%2Fsounds%2FscrollMenu.mp3R281aR361hR6tgoR2i68962R3R279R5y31:assets%2Fsounds%2Fmissnote1.mp3R281aR362hR6tgoR2i68962R3R279R5y31:assets%2Fsounds%2Fmissnote3.mp3R281aR363hR6tgoR2i68962R3R279R5y31:assets%2Fsounds%2Fmissnote2.mp3R281aR364hR6tgoR2i320854R3R279R5y31:assets%2Fsounds%2FsoundTest.mp3R281aR365hR6tgoR2i159129R3R279R5y33:assets%2Fsounds%2FSenpai_Dies.mp3R281aR366hR6tgoR2i43182R3R279R5y36:assets%2Fsounds%2FANGRY_TEXT_BOX.mp3R281aR367hR6tgoR2i9912R3R279R5y34:assets%2Fsounds%2Fintro2-pixel.mp3R281aR368hR6tgoR0y12:CHANGELOG.mdR2i6482R3R9R5R369R6tgoR2i75864R3y4:FONTy9:classNamey29:__ASSET__assets_fonts_vcr_ttfR5y24:assets%2Ffonts%2Fvcr.ttfR6tgoR0y34:assets%2Ffonts%2Ffonts-go-here.txtR2zR3R9R5R374R6tgoR2i14656R3R370R371y31:__ASSET__assets_fonts_pixel_otfR5y26:assets%2Ffonts%2Fpixel.otfR6tgoR2i39706R3R279R5y28:flixel%2Fsounds%2Fflixel.mp3R281aR377y28:flixel%2Fsounds%2Fflixel.ogghR6tgoR2i2114R3R279R5y26:flixel%2Fsounds%2Fbeep.mp3R281aR379y26:flixel%2Fsounds%2Fbeep.ogghR6tgoR2i5794R3y5:SOUNDR5R380R281aR379R380hgoR2i33629R3R381R5R378R281aR377R378hgoR2i15744R3R370R371y35:__ASSET__flixel_fonts_nokiafc22_ttfR5y30:flixel%2Ffonts%2Fnokiafc22.ttfR6tgoR2i29724R3R370R371y36:__ASSET__flixel_fonts_monsterrat_ttfR5y31:flixel%2Ffonts%2Fmonsterrat.ttfR6tgoR0y33:flixel%2Fimages%2Fui%2Fbutton.pngR2i519R3R4R5R386R6tgoR0y36:flixel%2Fimages%2Flogo%2Fdefault.pngR2i3280R3R4R5R387R6tgoR0y44:flixel%2Fflixel-ui%2Fimg%2Fdropdown_mark.pngR2i156R3R4R5R388R6tgoR0y40:flixel%2Fflixel-ui%2Fimg%2Fplus_mark.pngR2i147R3R4R5R389R6tgoR0y36:flixel%2Fflixel-ui%2Fimg%2Fradio.pngR2i191R3R4R5R390R6tgoR0y48:flixel%2Fflixel-ui%2Fimg%2Fbutton_arrow_left.pngR2i459R3R4R5R391R6tgoR0y42:flixel%2Fflixel-ui%2Fimg%2Fbutton_thin.pngR2i247R3R4R5R392R6tgoR0y34:flixel%2Fflixel-ui%2Fimg%2Ftab.pngR2i201R3R4R5R393R6tgoR0y41:flixel%2Fflixel-ui%2Fimg%2Ffinger_big.pngR2i1724R3R4R5R394R6tgoR0y36:flixel%2Fflixel-ui%2Fimg%2Finvis.pngR2i128R3R4R5R395R6tgoR0y43:flixel%2Fflixel-ui%2Fimg%2Fchrome_inset.pngR2i192R3R4R5R396R6tgoR0y44:flixel%2Fflixel-ui%2Fimg%2Ftooltip_arrow.pngR2i18509R3R4R5R397R6tgoR0y49:flixel%2Fflixel-ui%2Fimg%2Fbutton_arrow_right.pngR2i511R3R4R5R398R6tgoR0y40:flixel%2Fflixel-ui%2Fimg%2Fradio_dot.pngR2i153R3R4R5R399R6tgoR0y37:flixel%2Fflixel-ui%2Fimg%2Fchrome.pngR2i253R3R4R5R400R6tgoR0y40:flixel%2Fflixel-ui%2Fimg%2Fcheck_box.pngR2i922R3R4R5R401R6tgoR0y44:flixel%2Fflixel-ui%2Fimg%2Fbutton_toggle.pngR2i534R3R4R5R402R6tgoR0y46:flixel%2Fflixel-ui%2Fimg%2Fbutton_arrow_up.pngR2i493R3R4R5R403R6tgoR0y41:flixel%2Fflixel-ui%2Fimg%2Fminus_mark.pngR2i136R3R4R5R404R6tgoR0y42:flixel%2Fflixel-ui%2Fimg%2Fchrome_flat.pngR2i212R3R4R5R405R6tgoR0y37:flixel%2Fflixel-ui%2Fimg%2Fswatch.pngR2i185R3R4R5R406R6tgoR0y43:flixel%2Fflixel-ui%2Fimg%2Fchrome_light.pngR2i214R3R4R5R407R6tgoR0y38:flixel%2Fflixel-ui%2Fimg%2Fhilight.pngR2i129R3R4R5R408R6tgoR0y41:flixel%2Fflixel-ui%2Fimg%2Fcheck_mark.pngR2i946R3R4R5R409R6tgoR0y39:flixel%2Fflixel-ui%2Fimg%2Ftab_back.pngR2i210R3R4R5R410R6tgoR0y34:flixel%2Fflixel-ui%2Fimg%2Fbox.pngR2i912R3R4R5R411R6tgoR0y43:flixel%2Fflixel-ui%2Fimg%2Ffinger_small.pngR2i294R3R4R5R412R6tgoR0y37:flixel%2Fflixel-ui%2Fimg%2Fbutton.pngR2i433R3R4R5R413R6tgoR0y48:flixel%2Fflixel-ui%2Fimg%2Fbutton_arrow_down.pngR2i446R3R4R5R414R6tgoR0y44:flixel%2Fflixel-ui%2Fxml%2Fdefault_popup.xmlR2i1848R3R9R5R415R6tgoR0y53:flixel%2Fflixel-ui%2Fxml%2Fdefault_loading_screen.xmlR2i1953R3R9R5R416R6tgoR0y39:flixel%2Fflixel-ui%2Fxml%2Fdefaults.xmlR2i1263R3R9R5R417R6tgh","rootPath":null,"version":2,"libraryArgs":[],"libraryType":null}';
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

@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_limo_dumb_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_limo_fastcarlol_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_limo_limodancer_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_limo_limodancer_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_limo_limosunset_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_limo_limooverlay_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_limo_bglimo_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_limo_bglimo_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_limo_limodrive_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_limo_limodrive_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_spooky_kids_assets_old_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_campaign_menu_ui_characters_orig_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_spooky_kids_assets_old_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_stage_light_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_good_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_shit_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_bfcar_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_combo_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_bfcar_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_weeb_weebtreesback_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_weeb_senpai_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_weeb_senpai_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_weeb_weebtrees_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_weeb_pixelui_arrowends_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_weeb_pixelui_hand_textbox_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_weeb_pixelui_num7_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_weeb_pixelui_date_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_weeb_pixelui_dialoguebox_pixel_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_weeb_pixelui_dialoguebox_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_weeb_pixelui_num1_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_weeb_pixelui_dialoguebox_senpaimad_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_weeb_pixelui_dialoguebox_senpaimad_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_weeb_pixelui_good_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_weeb_pixelui_num6_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_weeb_pixelui_sick_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_weeb_pixelui_set_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_weeb_pixelui_num0_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_weeb_pixelui_num8_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_weeb_pixelui_combo_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_weeb_pixelui_num5_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_weeb_pixelui_arrows_pixels_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_weeb_pixelui_num3_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_weeb_pixelui_shit_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_weeb_pixelui_num9_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_weeb_pixelui_dialoguebox_evil_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_weeb_pixelui_dialoguebox_evil_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_weeb_pixelui_ready_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_weeb_pixelui_num4_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_weeb_pixelui_bad_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_weeb_pixelui_num2_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_weeb_spiritfaceforward_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_weeb_evilschoolfg_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_weeb_weebstreet_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_weeb_gfpixel_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_weeb_gfpixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_weeb_weebtrees_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_weeb_weebschool_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_weeb_weebsky_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_weeb_petals_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_weeb_petals_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_weeb_spirit_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_weeb_senpaicrazy_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_weeb_bfpixelsdead_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_weeb_senpaicrazy_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_weeb_bfpixelsdead_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_weeb_senpaiportrait_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_weeb_senpaiportrait_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_weeb_bgfreaks_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_weeb_bgfreaks_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_weeb_bfportrait_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_weeb_bfportrait_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_weeb_bfpixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_weeb_bfpixel_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_weeb_spirit_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_weeb_animatedevilschool_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_weeb_animatedevilschool_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_weeb_evilschoolbg_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_lol_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_stagecurtains_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_custompad_abutton_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_custompad_rightarrow_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_custompad_leftarrow_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_custompad_uparrow_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_custompad_bbutton_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_custompad_downarrow_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_boyfriend_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_boyfriend_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_mom_assets_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_mom_assets_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_ready_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menubg_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_num4_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_num5_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_icongrid_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_num7_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_num6_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_num2_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_reset_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_num3_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_restart_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_gfdancetitle_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_num1_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_gfdancetitle_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_newgrounds_logo_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_campaign_menu_ui_characters_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_num0_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_lose_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_campaign_menu_ui_characters_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_lose_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_set_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_speech_bubble_talking_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_note_assets_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_speech_bubble_talking_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_note_assets_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_christmas_bgescalator_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_christmas_upperbop_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_christmas_upperbop_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_christmas_eviltree_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_christmas_bfchristmas_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_christmas_bfchristmas_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_christmas_mom_dad_christmas_assetscomp_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_christmas_christmasbg_full_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_christmas_bottombop_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_christmas_bottombop_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_christmas_bgwalls_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_christmas_evilbg_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_christmas_santa_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_christmas_santa_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_christmas_gfchristmas_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_christmas_gfchristmas_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_christmas_mom_dad_christmas_assets_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_christmas_mom_dad_christmas_assets_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_christmas_christmaswall_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_christmas_fgsnow_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_christmas_christmastree_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_christmas_monsterchristmas_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_christmas_monsterchristmas_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_christmas_evilsnow_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_backspace_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_healthbar_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_backspace_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_go_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_alphabet_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_alphabet_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_logo_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_virtual_inputfunkin_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_pico_fnf_assetss_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_stagefront_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_pico_fnf_assetss_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menubgmagenta_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_gfdancetest_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_gfdancetest_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_stageback_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_philly_street_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_philly_train_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_philly_city_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_philly_win4_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_philly_behindtrain_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_philly_win1_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_philly_win0_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_philly_win2_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_philly_win3_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_philly_sky_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_spooky_kids_assets_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_zzzzzzzz_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_spooky_kids_assets_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_logobumpin_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_screencaptierimage_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_logobumpin_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_num8_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_num9_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_campaign_menu_ui_assets_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_campaign_menu_ui_assets_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menubgblue_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_gf_assets_old_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_gf_assets_old_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_sick_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_virtual_inputfunkin_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_monster_assets_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_monster_assets_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_fnf_main_menu_assets_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_fnf_main_menu_assets_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_halloween_bg_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_halloween_bg_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_bad_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_momcar_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_momcar_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_grafix_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_images_go_here_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_halloween_bg_mobile_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_gfcar_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_gf_assets_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_gfcar_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_gf_assets_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_daddy_dearest_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_gftutsmaller_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_daddy_dearest_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_gftutsmaller_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_titleenter_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menudesat_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_titleenter_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_dadbattle_dadbattle_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_dadbattle_dadbattle_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_dadbattle_dadbattle_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_data_goes_here_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_roses_rosesdialogue_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_roses_roses_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_roses_roses_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_roses_roses_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_eggnog_eggnog_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_eggnog_eggnog_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_eggnog_eggnog_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_tutorial_tutorial_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_tutorial_tutorial_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_tutorial_tutorial_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_main_view_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_high_high_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_high_high_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_high_high_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_thorns_thornsdialogue_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_thorns_thorns_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_thorns_thorns_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_thorns_thorns_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_spookeez_spookeez_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_spookeez_spookeez_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_spookeez_spookeez_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_introtext_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_ridge_ridge_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_controlsold_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_specialthanks_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_fresh_fresh_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_fresh_fresh_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_fresh_fresh_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_pico_pico_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_pico_pico_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_pico_pico_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_freeplaysonglist_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_controls_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_cocoa_cocoa_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_cocoa_cocoa_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_cocoa_cocoa_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_senpai_senpai_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_senpai_senpai_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_senpai_senpaidialogue_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_senpai_senpai_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_smash_smash_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_satin_panties_satin_panties_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_satin_panties_satin_panties_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_satin_panties_satin_panties_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_philly_philly_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_philly_philly_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_philly_philly_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_winter_horrorland_winter_horrorland_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_winter_horrorland_winter_horrorland_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_winter_horrorland_winter_horrorland_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_south_south_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_south_south_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_south_south_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_milf_milf_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_milf_milf_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_milf_milf_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_bopeebo_bopeebo_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_bopeebo_bopeebo_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_bopeebo_bopeebo_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_characterlist_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_monster_monster_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_blammed_blammed_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_blammed_blammed_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_blammed_blammed_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_intromod__append_data_introtext_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_readme_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_modlist_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_music_lunchbox_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_music_thorns_voices_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_music_thorns_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_music_dadbattle_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_music_breakfast_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_music_eggnog_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_music_blammed_voices_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_music_test_voices_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_music_monster_voices_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_music_blammed_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_music_winter_horrorland_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_music_roses_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_music_roses_voices_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_music_dadbattle_voices_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_music_spookeez_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_music_monster_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_music_eggnog_voices_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_music_bopeebo_voices_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_music_spookeez_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_music_pico_voices_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_music_titleshoot_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_music_satin_panties_voices_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_music_milf_voices_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_music_gameoverend_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_music_spookeez_voices_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_music_milf_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_music_bopeebo_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_music_cocoa_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_music_freakymenu_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_music_gameover_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_music_high_voices_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_music_pico_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_music_senpai_voices_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_music_fresh_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_music_test_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_music_high_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_music_south_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_music_gameover_pixel_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_music_senpai_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_music_tutorial_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_music_gameoverend_pixel_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_music_philly_voices_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_music_philly_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_music_satin_panties_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_music_south_voices_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_music_monster_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_music_fresh_voices_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_music_cocoa_voices_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_music_title_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_music_lunchboxscary_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_music_winter_horrorland_voices_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_fnf_loss_sfx_pixel_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_pixeltext_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_gf_3_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_gf_2_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_gf_1_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_lights_shut_off_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_gf_4_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_intro1_pixel_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_cancelmenu_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_intro2_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_train_passes_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_clicktext_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_intro3_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_intro1_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_lights_turn_on_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_angry_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_carpass0_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_carpass1_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_freshintro_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_fnf_loss_sfx_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_confirmmenu_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_badnoise1_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_thunder_2_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_badnoise2_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_thunder_1_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_intro3_pixel_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_introgo_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_badnoise3_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_introgo_pixel_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_scrollmenu_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_missnote1_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_missnote3_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_missnote2_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_soundtest_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_senpai_dies_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_angry_text_box_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_intro2_pixel_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__changelog_md extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_fonts_vcr_ttf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_fonts_fonts_go_here_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_fonts_pixel_otf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_sounds_flixel_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_sounds_beep_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_sounds_beep_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_sounds_flixel_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_fonts_nokiafc22_ttf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_fonts_monsterrat_ttf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_images_ui_button_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_images_logo_default_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_dropdown_mark_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_plus_mark_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_radio_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_arrow_left_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_thin_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_tab_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_finger_big_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_invis_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_chrome_inset_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_tooltip_arrow_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_arrow_right_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_radio_dot_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_chrome_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_check_box_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_toggle_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_arrow_up_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_minus_mark_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_chrome_flat_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_swatch_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_chrome_light_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_hilight_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_check_mark_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_tab_back_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_box_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_finger_small_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_arrow_down_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_xml_default_popup_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_xml_default_loading_screen_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_xml_defaults_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__manifest_default_json extends null { }


#elseif (desktop || cpp)

@:keep @:image("assets/images/limo/dumb.png") @:noCompletion #if display private #end class __ASSET__assets_images_limo_dumb_png extends lime.graphics.Image {}
@:keep @:image("assets/images/limo/fastCarLol.png") @:noCompletion #if display private #end class __ASSET__assets_images_limo_fastcarlol_png extends lime.graphics.Image {}
@:keep @:file("assets/images/limo/limoDancer.xml") @:noCompletion #if display private #end class __ASSET__assets_images_limo_limodancer_xml extends haxe.io.Bytes {}
@:keep @:image("assets/images/limo/limoDancer.png") @:noCompletion #if display private #end class __ASSET__assets_images_limo_limodancer_png extends lime.graphics.Image {}
@:keep @:image("assets/images/limo/limoSunset.png") @:noCompletion #if display private #end class __ASSET__assets_images_limo_limosunset_png extends lime.graphics.Image {}
@:keep @:image("assets/images/limo/limoOverlay.png") @:noCompletion #if display private #end class __ASSET__assets_images_limo_limooverlay_png extends lime.graphics.Image {}
@:keep @:image("assets/images/limo/bgLimo.png") @:noCompletion #if display private #end class __ASSET__assets_images_limo_bglimo_png extends lime.graphics.Image {}
@:keep @:file("assets/images/limo/bgLimo.xml") @:noCompletion #if display private #end class __ASSET__assets_images_limo_bglimo_xml extends haxe.io.Bytes {}
@:keep @:image("assets/images/limo/limoDrive.png") @:noCompletion #if display private #end class __ASSET__assets_images_limo_limodrive_png extends lime.graphics.Image {}
@:keep @:file("assets/images/limo/limoDrive.xml") @:noCompletion #if display private #end class __ASSET__assets_images_limo_limodrive_xml extends haxe.io.Bytes {}
@:keep @:image("assets/images/spooky_kids_assets_old.png") @:noCompletion #if display private #end class __ASSET__assets_images_spooky_kids_assets_old_png extends lime.graphics.Image {}
@:keep @:image("assets/images/campaign_menu_UI_characters_orig.png") @:noCompletion #if display private #end class __ASSET__assets_images_campaign_menu_ui_characters_orig_png extends lime.graphics.Image {}
@:keep @:file("assets/images/spooky_kids_assets_old.xml") @:noCompletion #if display private #end class __ASSET__assets_images_spooky_kids_assets_old_xml extends haxe.io.Bytes {}
@:keep @:image("assets/images/stage_light.png") @:noCompletion #if display private #end class __ASSET__assets_images_stage_light_png extends lime.graphics.Image {}
@:keep @:image("assets/images/good.png") @:noCompletion #if display private #end class __ASSET__assets_images_good_png extends lime.graphics.Image {}
@:keep @:image("assets/images/shit.png") @:noCompletion #if display private #end class __ASSET__assets_images_shit_png extends lime.graphics.Image {}
@:keep @:image("assets/images/bfCar.png") @:noCompletion #if display private #end class __ASSET__assets_images_bfcar_png extends lime.graphics.Image {}
@:keep @:image("assets/images/combo.png") @:noCompletion #if display private #end class __ASSET__assets_images_combo_png extends lime.graphics.Image {}
@:keep @:file("assets/images/bfCar.xml") @:noCompletion #if display private #end class __ASSET__assets_images_bfcar_xml extends haxe.io.Bytes {}
@:keep @:image("assets/images/weeb/weebTreesBack.png") @:noCompletion #if display private #end class __ASSET__assets_images_weeb_weebtreesback_png extends lime.graphics.Image {}
@:keep @:image("assets/images/weeb/senpai.png") @:noCompletion #if display private #end class __ASSET__assets_images_weeb_senpai_png extends lime.graphics.Image {}
@:keep @:file("assets/images/weeb/senpai.xml") @:noCompletion #if display private #end class __ASSET__assets_images_weeb_senpai_xml extends haxe.io.Bytes {}
@:keep @:image("assets/images/weeb/weebTrees.png") @:noCompletion #if display private #end class __ASSET__assets_images_weeb_weebtrees_png extends lime.graphics.Image {}
@:keep @:image("assets/images/weeb/pixelUI/arrowEnds.png") @:noCompletion #if display private #end class __ASSET__assets_images_weeb_pixelui_arrowends_png extends lime.graphics.Image {}
@:keep @:image("assets/images/weeb/pixelUI/hand_textbox.png") @:noCompletion #if display private #end class __ASSET__assets_images_weeb_pixelui_hand_textbox_png extends lime.graphics.Image {}
@:keep @:image("assets/images/weeb/pixelUI/num7-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_images_weeb_pixelui_num7_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/images/weeb/pixelUI/date-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_images_weeb_pixelui_date_pixel_png extends lime.graphics.Image {}
@:keep @:file("assets/images/weeb/pixelUI/dialogueBox-pixel.xml") @:noCompletion #if display private #end class __ASSET__assets_images_weeb_pixelui_dialoguebox_pixel_xml extends haxe.io.Bytes {}
@:keep @:image("assets/images/weeb/pixelUI/dialogueBox-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_images_weeb_pixelui_dialoguebox_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/images/weeb/pixelUI/num1-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_images_weeb_pixelui_num1_pixel_png extends lime.graphics.Image {}
@:keep @:file("assets/images/weeb/pixelUI/dialogueBox-senpaiMad.xml") @:noCompletion #if display private #end class __ASSET__assets_images_weeb_pixelui_dialoguebox_senpaimad_xml extends haxe.io.Bytes {}
@:keep @:image("assets/images/weeb/pixelUI/dialogueBox-senpaiMad.png") @:noCompletion #if display private #end class __ASSET__assets_images_weeb_pixelui_dialoguebox_senpaimad_png extends lime.graphics.Image {}
@:keep @:image("assets/images/weeb/pixelUI/good-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_images_weeb_pixelui_good_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/images/weeb/pixelUI/num6-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_images_weeb_pixelui_num6_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/images/weeb/pixelUI/sick-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_images_weeb_pixelui_sick_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/images/weeb/pixelUI/set-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_images_weeb_pixelui_set_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/images/weeb/pixelUI/num0-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_images_weeb_pixelui_num0_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/images/weeb/pixelUI/num8-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_images_weeb_pixelui_num8_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/images/weeb/pixelUI/combo-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_images_weeb_pixelui_combo_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/images/weeb/pixelUI/num5-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_images_weeb_pixelui_num5_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/images/weeb/pixelUI/arrows-pixels.png") @:noCompletion #if display private #end class __ASSET__assets_images_weeb_pixelui_arrows_pixels_png extends lime.graphics.Image {}
@:keep @:image("assets/images/weeb/pixelUI/num3-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_images_weeb_pixelui_num3_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/images/weeb/pixelUI/shit-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_images_weeb_pixelui_shit_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/images/weeb/pixelUI/num9-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_images_weeb_pixelui_num9_pixel_png extends lime.graphics.Image {}
@:keep @:file("assets/images/weeb/pixelUI/dialogueBox-evil.xml") @:noCompletion #if display private #end class __ASSET__assets_images_weeb_pixelui_dialoguebox_evil_xml extends haxe.io.Bytes {}
@:keep @:image("assets/images/weeb/pixelUI/dialogueBox-evil.png") @:noCompletion #if display private #end class __ASSET__assets_images_weeb_pixelui_dialoguebox_evil_png extends lime.graphics.Image {}
@:keep @:image("assets/images/weeb/pixelUI/ready-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_images_weeb_pixelui_ready_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/images/weeb/pixelUI/num4-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_images_weeb_pixelui_num4_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/images/weeb/pixelUI/bad-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_images_weeb_pixelui_bad_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/images/weeb/pixelUI/num2-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_images_weeb_pixelui_num2_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/images/weeb/spiritFaceForward.png") @:noCompletion #if display private #end class __ASSET__assets_images_weeb_spiritfaceforward_png extends lime.graphics.Image {}
@:keep @:image("assets/images/weeb/evilSchoolFG.png") @:noCompletion #if display private #end class __ASSET__assets_images_weeb_evilschoolfg_png extends lime.graphics.Image {}
@:keep @:image("assets/images/weeb/weebStreet.png") @:noCompletion #if display private #end class __ASSET__assets_images_weeb_weebstreet_png extends lime.graphics.Image {}
@:keep @:file("assets/images/weeb/gfPixel.xml") @:noCompletion #if display private #end class __ASSET__assets_images_weeb_gfpixel_xml extends haxe.io.Bytes {}
@:keep @:image("assets/images/weeb/gfPixel.png") @:noCompletion #if display private #end class __ASSET__assets_images_weeb_gfpixel_png extends lime.graphics.Image {}
@:keep @:file("assets/images/weeb/weebTrees.txt") @:noCompletion #if display private #end class __ASSET__assets_images_weeb_weebtrees_txt extends haxe.io.Bytes {}
@:keep @:image("assets/images/weeb/weebSchool.png") @:noCompletion #if display private #end class __ASSET__assets_images_weeb_weebschool_png extends lime.graphics.Image {}
@:keep @:image("assets/images/weeb/weebSky.png") @:noCompletion #if display private #end class __ASSET__assets_images_weeb_weebsky_png extends lime.graphics.Image {}
@:keep @:file("assets/images/weeb/petals.xml") @:noCompletion #if display private #end class __ASSET__assets_images_weeb_petals_xml extends haxe.io.Bytes {}
@:keep @:image("assets/images/weeb/petals.png") @:noCompletion #if display private #end class __ASSET__assets_images_weeb_petals_png extends lime.graphics.Image {}
@:keep @:image("assets/images/weeb/spirit.png") @:noCompletion #if display private #end class __ASSET__assets_images_weeb_spirit_png extends lime.graphics.Image {}
@:keep @:file("assets/images/weeb/senpaiCrazy.xml") @:noCompletion #if display private #end class __ASSET__assets_images_weeb_senpaicrazy_xml extends haxe.io.Bytes {}
@:keep @:file("assets/images/weeb/bfPixelsDEAD.xml") @:noCompletion #if display private #end class __ASSET__assets_images_weeb_bfpixelsdead_xml extends haxe.io.Bytes {}
@:keep @:image("assets/images/weeb/senpaiCrazy.png") @:noCompletion #if display private #end class __ASSET__assets_images_weeb_senpaicrazy_png extends lime.graphics.Image {}
@:keep @:image("assets/images/weeb/bfPixelsDEAD.png") @:noCompletion #if display private #end class __ASSET__assets_images_weeb_bfpixelsdead_png extends lime.graphics.Image {}
@:keep @:image("assets/images/weeb/senpaiPortrait.png") @:noCompletion #if display private #end class __ASSET__assets_images_weeb_senpaiportrait_png extends lime.graphics.Image {}
@:keep @:file("assets/images/weeb/senpaiPortrait.xml") @:noCompletion #if display private #end class __ASSET__assets_images_weeb_senpaiportrait_xml extends haxe.io.Bytes {}
@:keep @:file("assets/images/weeb/bgFreaks.xml") @:noCompletion #if display private #end class __ASSET__assets_images_weeb_bgfreaks_xml extends haxe.io.Bytes {}
@:keep @:image("assets/images/weeb/bgFreaks.png") @:noCompletion #if display private #end class __ASSET__assets_images_weeb_bgfreaks_png extends lime.graphics.Image {}
@:keep @:image("assets/images/weeb/bfPortrait.png") @:noCompletion #if display private #end class __ASSET__assets_images_weeb_bfportrait_png extends lime.graphics.Image {}
@:keep @:file("assets/images/weeb/bfPortrait.xml") @:noCompletion #if display private #end class __ASSET__assets_images_weeb_bfportrait_xml extends haxe.io.Bytes {}
@:keep @:image("assets/images/weeb/bfPixel.png") @:noCompletion #if display private #end class __ASSET__assets_images_weeb_bfpixel_png extends lime.graphics.Image {}
@:keep @:file("assets/images/weeb/bfPixel.xml") @:noCompletion #if display private #end class __ASSET__assets_images_weeb_bfpixel_xml extends haxe.io.Bytes {}
@:keep @:file("assets/images/weeb/spirit.txt") @:noCompletion #if display private #end class __ASSET__assets_images_weeb_spirit_txt extends haxe.io.Bytes {}
@:keep @:image("assets/images/weeb/animatedEvilSchool.png") @:noCompletion #if display private #end class __ASSET__assets_images_weeb_animatedevilschool_png extends lime.graphics.Image {}
@:keep @:file("assets/images/weeb/animatedEvilSchool.xml") @:noCompletion #if display private #end class __ASSET__assets_images_weeb_animatedevilschool_xml extends haxe.io.Bytes {}
@:keep @:image("assets/images/weeb/evilSchoolBG.png") @:noCompletion #if display private #end class __ASSET__assets_images_weeb_evilschoolbg_png extends lime.graphics.Image {}
@:keep @:image("assets/images/lol.png") @:noCompletion #if display private #end class __ASSET__assets_images_lol_png extends lime.graphics.Image {}
@:keep @:image("assets/images/stagecurtains.png") @:noCompletion #if display private #end class __ASSET__assets_images_stagecurtains_png extends lime.graphics.Image {}
@:keep @:image("assets/images/custompad/abutton.png") @:noCompletion #if display private #end class __ASSET__assets_images_custompad_abutton_png extends lime.graphics.Image {}
@:keep @:image("assets/images/custompad/rightarrow.png") @:noCompletion #if display private #end class __ASSET__assets_images_custompad_rightarrow_png extends lime.graphics.Image {}
@:keep @:image("assets/images/custompad/leftarrow.png") @:noCompletion #if display private #end class __ASSET__assets_images_custompad_leftarrow_png extends lime.graphics.Image {}
@:keep @:image("assets/images/custompad/uparrow.png") @:noCompletion #if display private #end class __ASSET__assets_images_custompad_uparrow_png extends lime.graphics.Image {}
@:keep @:image("assets/images/custompad/bbutton.png") @:noCompletion #if display private #end class __ASSET__assets_images_custompad_bbutton_png extends lime.graphics.Image {}
@:keep @:image("assets/images/custompad/downarrow.png") @:noCompletion #if display private #end class __ASSET__assets_images_custompad_downarrow_png extends lime.graphics.Image {}
@:keep @:image("assets/images/BOYFRIEND.png") @:noCompletion #if display private #end class __ASSET__assets_images_boyfriend_png extends lime.graphics.Image {}
@:keep @:file("assets/images/BOYFRIEND.xml") @:noCompletion #if display private #end class __ASSET__assets_images_boyfriend_xml extends haxe.io.Bytes {}
@:keep @:file("assets/images/Mom_Assets.xml") @:noCompletion #if display private #end class __ASSET__assets_images_mom_assets_xml extends haxe.io.Bytes {}
@:keep @:image("assets/images/Mom_Assets.png") @:noCompletion #if display private #end class __ASSET__assets_images_mom_assets_png extends lime.graphics.Image {}
@:keep @:image("assets/images/ready.png") @:noCompletion #if display private #end class __ASSET__assets_images_ready_png extends lime.graphics.Image {}
@:keep @:image("assets/images/menuBG.png") @:noCompletion #if display private #end class __ASSET__assets_images_menubg_png extends lime.graphics.Image {}
@:keep @:image("assets/images/num4.png") @:noCompletion #if display private #end class __ASSET__assets_images_num4_png extends lime.graphics.Image {}
@:keep @:image("assets/images/num5.png") @:noCompletion #if display private #end class __ASSET__assets_images_num5_png extends lime.graphics.Image {}
@:keep @:image("assets/images/iconGrid.png") @:noCompletion #if display private #end class __ASSET__assets_images_icongrid_png extends lime.graphics.Image {}
@:keep @:image("assets/images/num7.png") @:noCompletion #if display private #end class __ASSET__assets_images_num7_png extends lime.graphics.Image {}
@:keep @:image("assets/images/num6.png") @:noCompletion #if display private #end class __ASSET__assets_images_num6_png extends lime.graphics.Image {}
@:keep @:image("assets/images/num2.png") @:noCompletion #if display private #end class __ASSET__assets_images_num2_png extends lime.graphics.Image {}
@:keep @:image("assets/images/reset.png") @:noCompletion #if display private #end class __ASSET__assets_images_reset_png extends lime.graphics.Image {}
@:keep @:image("assets/images/num3.png") @:noCompletion #if display private #end class __ASSET__assets_images_num3_png extends lime.graphics.Image {}
@:keep @:image("assets/images/restart.png") @:noCompletion #if display private #end class __ASSET__assets_images_restart_png extends lime.graphics.Image {}
@:keep @:file("assets/images/gfDanceTitle.xml") @:noCompletion #if display private #end class __ASSET__assets_images_gfdancetitle_xml extends haxe.io.Bytes {}
@:keep @:image("assets/images/num1.png") @:noCompletion #if display private #end class __ASSET__assets_images_num1_png extends lime.graphics.Image {}
@:keep @:image("assets/images/gfDanceTitle.png") @:noCompletion #if display private #end class __ASSET__assets_images_gfdancetitle_png extends lime.graphics.Image {}
@:keep @:image("assets/images/newgrounds_logo.png") @:noCompletion #if display private #end class __ASSET__assets_images_newgrounds_logo_png extends lime.graphics.Image {}
@:keep @:image("assets/images/campaign_menu_UI_characters.png") @:noCompletion #if display private #end class __ASSET__assets_images_campaign_menu_ui_characters_png extends lime.graphics.Image {}
@:keep @:image("assets/images/num0.png") @:noCompletion #if display private #end class __ASSET__assets_images_num0_png extends lime.graphics.Image {}
@:keep @:image("assets/images/lose.png") @:noCompletion #if display private #end class __ASSET__assets_images_lose_png extends lime.graphics.Image {}
@:keep @:file("assets/images/campaign_menu_UI_characters.xml") @:noCompletion #if display private #end class __ASSET__assets_images_campaign_menu_ui_characters_xml extends haxe.io.Bytes {}
@:keep @:file("assets/images/lose.xml") @:noCompletion #if display private #end class __ASSET__assets_images_lose_xml extends haxe.io.Bytes {}
@:keep @:image("assets/images/set.png") @:noCompletion #if display private #end class __ASSET__assets_images_set_png extends lime.graphics.Image {}
@:keep @:file("assets/images/speech_bubble_talking.xml") @:noCompletion #if display private #end class __ASSET__assets_images_speech_bubble_talking_xml extends haxe.io.Bytes {}
@:keep @:image("assets/images/NOTE_assets.png") @:noCompletion #if display private #end class __ASSET__assets_images_note_assets_png extends lime.graphics.Image {}
@:keep @:image("assets/images/speech_bubble_talking.png") @:noCompletion #if display private #end class __ASSET__assets_images_speech_bubble_talking_png extends lime.graphics.Image {}
@:keep @:file("assets/images/NOTE_assets.xml") @:noCompletion #if display private #end class __ASSET__assets_images_note_assets_xml extends haxe.io.Bytes {}
@:keep @:image("assets/images/christmas/bgEscalator.png") @:noCompletion #if display private #end class __ASSET__assets_images_christmas_bgescalator_png extends lime.graphics.Image {}
@:keep @:file("assets/images/christmas/upperBop.xml") @:noCompletion #if display private #end class __ASSET__assets_images_christmas_upperbop_xml extends haxe.io.Bytes {}
@:keep @:image("assets/images/christmas/upperBop.png") @:noCompletion #if display private #end class __ASSET__assets_images_christmas_upperbop_png extends lime.graphics.Image {}
@:keep @:image("assets/images/christmas/evilTree.png") @:noCompletion #if display private #end class __ASSET__assets_images_christmas_eviltree_png extends lime.graphics.Image {}
@:keep @:file("assets/images/christmas/bfChristmas.xml") @:noCompletion #if display private #end class __ASSET__assets_images_christmas_bfchristmas_xml extends haxe.io.Bytes {}
@:keep @:image("assets/images/christmas/bfChristmas.png") @:noCompletion #if display private #end class __ASSET__assets_images_christmas_bfchristmas_png extends lime.graphics.Image {}
@:keep @:image("assets/images/christmas/mom_dad_christmas_assetscomp.png") @:noCompletion #if display private #end class __ASSET__assets_images_christmas_mom_dad_christmas_assetscomp_png extends lime.graphics.Image {}
@:keep @:image("assets/images/christmas/christmasBG_Full.png") @:noCompletion #if display private #end class __ASSET__assets_images_christmas_christmasbg_full_png extends lime.graphics.Image {}
@:keep @:image("assets/images/christmas/bottomBop.png") @:noCompletion #if display private #end class __ASSET__assets_images_christmas_bottombop_png extends lime.graphics.Image {}
@:keep @:file("assets/images/christmas/bottomBop.xml") @:noCompletion #if display private #end class __ASSET__assets_images_christmas_bottombop_xml extends haxe.io.Bytes {}
@:keep @:image("assets/images/christmas/bgWalls.png") @:noCompletion #if display private #end class __ASSET__assets_images_christmas_bgwalls_png extends lime.graphics.Image {}
@:keep @:image("assets/images/christmas/evilBG.png") @:noCompletion #if display private #end class __ASSET__assets_images_christmas_evilbg_png extends lime.graphics.Image {}
@:keep @:file("assets/images/christmas/santa.xml") @:noCompletion #if display private #end class __ASSET__assets_images_christmas_santa_xml extends haxe.io.Bytes {}
@:keep @:image("assets/images/christmas/santa.png") @:noCompletion #if display private #end class __ASSET__assets_images_christmas_santa_png extends lime.graphics.Image {}
@:keep @:file("assets/images/christmas/gfChristmas.xml") @:noCompletion #if display private #end class __ASSET__assets_images_christmas_gfchristmas_xml extends haxe.io.Bytes {}
@:keep @:image("assets/images/christmas/gfChristmas.png") @:noCompletion #if display private #end class __ASSET__assets_images_christmas_gfchristmas_png extends lime.graphics.Image {}
@:keep @:image("assets/images/christmas/mom_dad_christmas_assets.png") @:noCompletion #if display private #end class __ASSET__assets_images_christmas_mom_dad_christmas_assets_png extends lime.graphics.Image {}
@:keep @:file("assets/images/christmas/mom_dad_christmas_assets.xml") @:noCompletion #if display private #end class __ASSET__assets_images_christmas_mom_dad_christmas_assets_xml extends haxe.io.Bytes {}
@:keep @:image("assets/images/christmas/christmasWall.png") @:noCompletion #if display private #end class __ASSET__assets_images_christmas_christmaswall_png extends lime.graphics.Image {}
@:keep @:image("assets/images/christmas/fgSnow.png") @:noCompletion #if display private #end class __ASSET__assets_images_christmas_fgsnow_png extends lime.graphics.Image {}
@:keep @:image("assets/images/christmas/christmasTree.png") @:noCompletion #if display private #end class __ASSET__assets_images_christmas_christmastree_png extends lime.graphics.Image {}
@:keep @:file("assets/images/christmas/monsterChristmas.xml") @:noCompletion #if display private #end class __ASSET__assets_images_christmas_monsterchristmas_xml extends haxe.io.Bytes {}
@:keep @:image("assets/images/christmas/monsterChristmas.png") @:noCompletion #if display private #end class __ASSET__assets_images_christmas_monsterchristmas_png extends lime.graphics.Image {}
@:keep @:image("assets/images/christmas/evilSnow.png") @:noCompletion #if display private #end class __ASSET__assets_images_christmas_evilsnow_png extends lime.graphics.Image {}
@:keep @:file("assets/images/backspace.xml") @:noCompletion #if display private #end class __ASSET__assets_images_backspace_xml extends haxe.io.Bytes {}
@:keep @:image("assets/images/healthBar.png") @:noCompletion #if display private #end class __ASSET__assets_images_healthbar_png extends lime.graphics.Image {}
@:keep @:image("assets/images/backspace.png") @:noCompletion #if display private #end class __ASSET__assets_images_backspace_png extends lime.graphics.Image {}
@:keep @:image("assets/images/go.png") @:noCompletion #if display private #end class __ASSET__assets_images_go_png extends lime.graphics.Image {}
@:keep @:file("assets/images/alphabet.xml") @:noCompletion #if display private #end class __ASSET__assets_images_alphabet_xml extends haxe.io.Bytes {}
@:keep @:image("assets/images/alphabet.png") @:noCompletion #if display private #end class __ASSET__assets_images_alphabet_png extends lime.graphics.Image {}
@:keep @:image("assets/images/logo.png") @:noCompletion #if display private #end class __ASSET__assets_images_logo_png extends lime.graphics.Image {}
@:keep @:file("assets/images/virtual-inputfunkin.txt") @:noCompletion #if display private #end class __ASSET__assets_images_virtual_inputfunkin_txt extends haxe.io.Bytes {}
@:keep @:image("assets/images/Pico_FNF_assetss.png") @:noCompletion #if display private #end class __ASSET__assets_images_pico_fnf_assetss_png extends lime.graphics.Image {}
@:keep @:image("assets/images/stagefront.png") @:noCompletion #if display private #end class __ASSET__assets_images_stagefront_png extends lime.graphics.Image {}
@:keep @:file("assets/images/Pico_FNF_assetss.xml") @:noCompletion #if display private #end class __ASSET__assets_images_pico_fnf_assetss_xml extends haxe.io.Bytes {}
@:keep @:image("assets/images/menuBGMagenta.png") @:noCompletion #if display private #end class __ASSET__assets_images_menubgmagenta_png extends lime.graphics.Image {}
@:keep @:file("assets/images/gfdancetest.xml") @:noCompletion #if display private #end class __ASSET__assets_images_gfdancetest_xml extends haxe.io.Bytes {}
@:keep @:image("assets/images/gfdancetest.png") @:noCompletion #if display private #end class __ASSET__assets_images_gfdancetest_png extends lime.graphics.Image {}
@:keep @:image("assets/images/stageback.png") @:noCompletion #if display private #end class __ASSET__assets_images_stageback_png extends lime.graphics.Image {}
@:keep @:image("assets/images/philly/street.png") @:noCompletion #if display private #end class __ASSET__assets_images_philly_street_png extends lime.graphics.Image {}
@:keep @:image("assets/images/philly/train.png") @:noCompletion #if display private #end class __ASSET__assets_images_philly_train_png extends lime.graphics.Image {}
@:keep @:image("assets/images/philly/city.png") @:noCompletion #if display private #end class __ASSET__assets_images_philly_city_png extends lime.graphics.Image {}
@:keep @:image("assets/images/philly/win4.png") @:noCompletion #if display private #end class __ASSET__assets_images_philly_win4_png extends lime.graphics.Image {}
@:keep @:image("assets/images/philly/behindTrain.png") @:noCompletion #if display private #end class __ASSET__assets_images_philly_behindtrain_png extends lime.graphics.Image {}
@:keep @:image("assets/images/philly/win1.png") @:noCompletion #if display private #end class __ASSET__assets_images_philly_win1_png extends lime.graphics.Image {}
@:keep @:image("assets/images/philly/win0.png") @:noCompletion #if display private #end class __ASSET__assets_images_philly_win0_png extends lime.graphics.Image {}
@:keep @:image("assets/images/philly/win2.png") @:noCompletion #if display private #end class __ASSET__assets_images_philly_win2_png extends lime.graphics.Image {}
@:keep @:image("assets/images/philly/win3.png") @:noCompletion #if display private #end class __ASSET__assets_images_philly_win3_png extends lime.graphics.Image {}
@:keep @:image("assets/images/philly/sky.png") @:noCompletion #if display private #end class __ASSET__assets_images_philly_sky_png extends lime.graphics.Image {}
@:keep @:file("assets/images/spooky_kids_assets.xml") @:noCompletion #if display private #end class __ASSET__assets_images_spooky_kids_assets_xml extends haxe.io.Bytes {}
@:keep @:image("assets/images/zzzzzzzz.png") @:noCompletion #if display private #end class __ASSET__assets_images_zzzzzzzz_png extends lime.graphics.Image {}
@:keep @:image("assets/images/spooky_kids_assets.png") @:noCompletion #if display private #end class __ASSET__assets_images_spooky_kids_assets_png extends lime.graphics.Image {}
@:keep @:image("assets/images/logoBumpin.png") @:noCompletion #if display private #end class __ASSET__assets_images_logobumpin_png extends lime.graphics.Image {}
@:keep @:image("assets/images/screencapTierImage.png") @:noCompletion #if display private #end class __ASSET__assets_images_screencaptierimage_png extends lime.graphics.Image {}
@:keep @:file("assets/images/logoBumpin.xml") @:noCompletion #if display private #end class __ASSET__assets_images_logobumpin_xml extends haxe.io.Bytes {}
@:keep @:image("assets/images/num8.png") @:noCompletion #if display private #end class __ASSET__assets_images_num8_png extends lime.graphics.Image {}
@:keep @:image("assets/images/num9.png") @:noCompletion #if display private #end class __ASSET__assets_images_num9_png extends lime.graphics.Image {}
@:keep @:image("assets/images/campaign_menu_UI_assets.png") @:noCompletion #if display private #end class __ASSET__assets_images_campaign_menu_ui_assets_png extends lime.graphics.Image {}
@:keep @:file("assets/images/campaign_menu_UI_assets.xml") @:noCompletion #if display private #end class __ASSET__assets_images_campaign_menu_ui_assets_xml extends haxe.io.Bytes {}
@:keep @:image("assets/images/menuBGBlue.png") @:noCompletion #if display private #end class __ASSET__assets_images_menubgblue_png extends lime.graphics.Image {}
@:keep @:image("assets/images/GF_assets_old.png") @:noCompletion #if display private #end class __ASSET__assets_images_gf_assets_old_png extends lime.graphics.Image {}
@:keep @:file("assets/images/GF_assets_old.xml") @:noCompletion #if display private #end class __ASSET__assets_images_gf_assets_old_xml extends haxe.io.Bytes {}
@:keep @:image("assets/images/sick.png") @:noCompletion #if display private #end class __ASSET__assets_images_sick_png extends lime.graphics.Image {}
@:keep @:image("assets/images/virtual-inputfunkin.png") @:noCompletion #if display private #end class __ASSET__assets_images_virtual_inputfunkin_png extends lime.graphics.Image {}
@:keep @:file("assets/images/Monster_Assets.xml") @:noCompletion #if display private #end class __ASSET__assets_images_monster_assets_xml extends haxe.io.Bytes {}
@:keep @:image("assets/images/Monster_Assets.png") @:noCompletion #if display private #end class __ASSET__assets_images_monster_assets_png extends lime.graphics.Image {}
@:keep @:image("assets/images/FNF_main_menu_assets.png") @:noCompletion #if display private #end class __ASSET__assets_images_fnf_main_menu_assets_png extends lime.graphics.Image {}
@:keep @:file("assets/images/FNF_main_menu_assets.xml") @:noCompletion #if display private #end class __ASSET__assets_images_fnf_main_menu_assets_xml extends haxe.io.Bytes {}
@:keep @:file("assets/images/halloween_bg.xml") @:noCompletion #if display private #end class __ASSET__assets_images_halloween_bg_xml extends haxe.io.Bytes {}
@:keep @:image("assets/images/halloween_bg.png") @:noCompletion #if display private #end class __ASSET__assets_images_halloween_bg_png extends lime.graphics.Image {}
@:keep @:image("assets/images/bad.png") @:noCompletion #if display private #end class __ASSET__assets_images_bad_png extends lime.graphics.Image {}
@:keep @:file("assets/images/momCar.xml") @:noCompletion #if display private #end class __ASSET__assets_images_momcar_xml extends haxe.io.Bytes {}
@:keep @:image("assets/images/momCar.png") @:noCompletion #if display private #end class __ASSET__assets_images_momcar_png extends lime.graphics.Image {}
@:keep @:image("assets/images/grafix.png") @:noCompletion #if display private #end class __ASSET__assets_images_grafix_png extends lime.graphics.Image {}
@:keep @:file("assets/images/images-go-here.txt") @:noCompletion #if display private #end class __ASSET__assets_images_images_go_here_txt extends haxe.io.Bytes {}
@:keep @:image("assets/images/halloween_bg_mobile.png") @:noCompletion #if display private #end class __ASSET__assets_images_halloween_bg_mobile_png extends lime.graphics.Image {}
@:keep @:image("assets/images/gfCar.png") @:noCompletion #if display private #end class __ASSET__assets_images_gfcar_png extends lime.graphics.Image {}
@:keep @:file("assets/images/GF_assets.xml") @:noCompletion #if display private #end class __ASSET__assets_images_gf_assets_xml extends haxe.io.Bytes {}
@:keep @:file("assets/images/gfCar.xml") @:noCompletion #if display private #end class __ASSET__assets_images_gfcar_xml extends haxe.io.Bytes {}
@:keep @:image("assets/images/GF_assets.png") @:noCompletion #if display private #end class __ASSET__assets_images_gf_assets_png extends lime.graphics.Image {}
@:keep @:file("assets/images/DADDY_DEAREST.xml") @:noCompletion #if display private #end class __ASSET__assets_images_daddy_dearest_xml extends haxe.io.Bytes {}
@:keep @:file("assets/images/gftutsmaller.xml") @:noCompletion #if display private #end class __ASSET__assets_images_gftutsmaller_xml extends haxe.io.Bytes {}
@:keep @:image("assets/images/DADDY_DEAREST.png") @:noCompletion #if display private #end class __ASSET__assets_images_daddy_dearest_png extends lime.graphics.Image {}
@:keep @:image("assets/images/gftutsmaller.png") @:noCompletion #if display private #end class __ASSET__assets_images_gftutsmaller_png extends lime.graphics.Image {}
@:keep @:file("assets/images/titleEnter.xml") @:noCompletion #if display private #end class __ASSET__assets_images_titleenter_xml extends haxe.io.Bytes {}
@:keep @:image("assets/images/menuDesat.png") @:noCompletion #if display private #end class __ASSET__assets_images_menudesat_png extends lime.graphics.Image {}
@:keep @:image("assets/images/titleEnter.png") @:noCompletion #if display private #end class __ASSET__assets_images_titleenter_png extends lime.graphics.Image {}
@:keep @:file("assets/data/dadbattle/dadbattle-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_dadbattle_dadbattle_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/data/dadbattle/dadbattle-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_dadbattle_dadbattle_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/data/dadbattle/dadbattle.json") @:noCompletion #if display private #end class __ASSET__assets_data_dadbattle_dadbattle_json extends haxe.io.Bytes {}
@:keep @:file("assets/data/data-goes-here.txt") @:noCompletion #if display private #end class __ASSET__assets_data_data_goes_here_txt extends haxe.io.Bytes {}
@:keep @:file("assets/data/roses/rosesDialogue.txt") @:noCompletion #if display private #end class __ASSET__assets_data_roses_rosesdialogue_txt extends haxe.io.Bytes {}
@:keep @:file("assets/data/roses/roses-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_roses_roses_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/data/roses/roses-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_roses_roses_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/data/roses/roses.json") @:noCompletion #if display private #end class __ASSET__assets_data_roses_roses_json extends haxe.io.Bytes {}
@:keep @:file("assets/data/eggnog/eggnog-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_eggnog_eggnog_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/data/eggnog/eggnog-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_eggnog_eggnog_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/data/eggnog/eggnog.json") @:noCompletion #if display private #end class __ASSET__assets_data_eggnog_eggnog_json extends haxe.io.Bytes {}
@:keep @:file("assets/data/tutorial/tutorial-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_tutorial_tutorial_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/data/tutorial/tutorial-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_tutorial_tutorial_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/data/tutorial/tutorial.json") @:noCompletion #if display private #end class __ASSET__assets_data_tutorial_tutorial_json extends haxe.io.Bytes {}
@:keep @:file("assets/data/main-view.xml") @:noCompletion #if display private #end class __ASSET__assets_data_main_view_xml extends haxe.io.Bytes {}
@:keep @:file("assets/data/high/high-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_high_high_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/data/high/high-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_high_high_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/data/high/high.json") @:noCompletion #if display private #end class __ASSET__assets_data_high_high_json extends haxe.io.Bytes {}
@:keep @:file("assets/data/thorns/thornsDialogue.txt") @:noCompletion #if display private #end class __ASSET__assets_data_thorns_thornsdialogue_txt extends haxe.io.Bytes {}
@:keep @:file("assets/data/thorns/thorns-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_thorns_thorns_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/data/thorns/thorns-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_thorns_thorns_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/data/thorns/thorns.json") @:noCompletion #if display private #end class __ASSET__assets_data_thorns_thorns_json extends haxe.io.Bytes {}
@:keep @:file("assets/data/spookeez/spookeez-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_spookeez_spookeez_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/data/spookeez/spookeez-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_spookeez_spookeez_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/data/spookeez/spookeez.json") @:noCompletion #if display private #end class __ASSET__assets_data_spookeez_spookeez_json extends haxe.io.Bytes {}
@:keep @:file("assets/data/introText.txt") @:noCompletion #if display private #end class __ASSET__assets_data_introtext_txt extends haxe.io.Bytes {}
@:keep @:file("assets/data/ridge/ridge.json") @:noCompletion #if display private #end class __ASSET__assets_data_ridge_ridge_json extends haxe.io.Bytes {}
@:keep @:file("assets/data/controlsold.txt") @:noCompletion #if display private #end class __ASSET__assets_data_controlsold_txt extends haxe.io.Bytes {}
@:keep @:file("assets/data/specialThanks.txt") @:noCompletion #if display private #end class __ASSET__assets_data_specialthanks_txt extends haxe.io.Bytes {}
@:keep @:file("assets/data/fresh/fresh-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_fresh_fresh_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/data/fresh/fresh-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_fresh_fresh_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/data/fresh/fresh.json") @:noCompletion #if display private #end class __ASSET__assets_data_fresh_fresh_json extends haxe.io.Bytes {}
@:keep @:file("assets/data/pico/pico-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_pico_pico_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/data/pico/pico-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_pico_pico_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/data/pico/pico.json") @:noCompletion #if display private #end class __ASSET__assets_data_pico_pico_json extends haxe.io.Bytes {}
@:keep @:file("assets/data/freeplaySonglist.txt") @:noCompletion #if display private #end class __ASSET__assets_data_freeplaysonglist_txt extends haxe.io.Bytes {}
@:keep @:file("assets/data/controls.txt") @:noCompletion #if display private #end class __ASSET__assets_data_controls_txt extends haxe.io.Bytes {}
@:keep @:file("assets/data/cocoa/cocoa-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_cocoa_cocoa_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/data/cocoa/cocoa-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_cocoa_cocoa_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/data/cocoa/cocoa.json") @:noCompletion #if display private #end class __ASSET__assets_data_cocoa_cocoa_json extends haxe.io.Bytes {}
@:keep @:file("assets/data/senpai/senpai-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_senpai_senpai_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/data/senpai/senpai-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_senpai_senpai_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/data/senpai/senpaiDialogue.txt") @:noCompletion #if display private #end class __ASSET__assets_data_senpai_senpaidialogue_txt extends haxe.io.Bytes {}
@:keep @:file("assets/data/senpai/senpai.json") @:noCompletion #if display private #end class __ASSET__assets_data_senpai_senpai_json extends haxe.io.Bytes {}
@:keep @:file("assets/data/smash/smash.json") @:noCompletion #if display private #end class __ASSET__assets_data_smash_smash_json extends haxe.io.Bytes {}
@:keep @:file("assets/data/satin-panties/satin-panties-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_satin_panties_satin_panties_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/data/satin-panties/satin-panties-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_satin_panties_satin_panties_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/data/satin-panties/satin-panties.json") @:noCompletion #if display private #end class __ASSET__assets_data_satin_panties_satin_panties_json extends haxe.io.Bytes {}
@:keep @:file("assets/data/philly/philly-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_philly_philly_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/data/philly/philly-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_philly_philly_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/data/philly/philly.json") @:noCompletion #if display private #end class __ASSET__assets_data_philly_philly_json extends haxe.io.Bytes {}
@:keep @:file("assets/data/winter-horrorland/winter-horrorland-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_winter_horrorland_winter_horrorland_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/data/winter-horrorland/winter-horrorland-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_winter_horrorland_winter_horrorland_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/data/winter-horrorland/winter-horrorland.json") @:noCompletion #if display private #end class __ASSET__assets_data_winter_horrorland_winter_horrorland_json extends haxe.io.Bytes {}
@:keep @:file("assets/data/south/south-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_south_south_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/data/south/south-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_south_south_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/data/south/south.json") @:noCompletion #if display private #end class __ASSET__assets_data_south_south_json extends haxe.io.Bytes {}
@:keep @:file("assets/data/milf/milf-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_milf_milf_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/data/milf/milf-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_milf_milf_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/data/milf/milf.json") @:noCompletion #if display private #end class __ASSET__assets_data_milf_milf_json extends haxe.io.Bytes {}
@:keep @:file("assets/data/bopeebo/bopeebo.json") @:noCompletion #if display private #end class __ASSET__assets_data_bopeebo_bopeebo_json extends haxe.io.Bytes {}
@:keep @:file("assets/data/bopeebo/bopeebo-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_bopeebo_bopeebo_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/data/bopeebo/bopeebo-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_bopeebo_bopeebo_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/data/characterList.txt") @:noCompletion #if display private #end class __ASSET__assets_data_characterlist_txt extends haxe.io.Bytes {}
@:keep @:file("assets/data/monster/monster.json") @:noCompletion #if display private #end class __ASSET__assets_data_monster_monster_json extends haxe.io.Bytes {}
@:keep @:file("assets/data/blammed/blammed.json") @:noCompletion #if display private #end class __ASSET__assets_data_blammed_blammed_json extends haxe.io.Bytes {}
@:keep @:file("assets/data/blammed/blammed-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_blammed_blammed_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/data/blammed/blammed-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_blammed_blammed_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/music/Lunchbox.mp3") @:noCompletion #if display private #end class __ASSET__assets_music_lunchbox_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/music/Thorns_Voices.mp3") @:noCompletion #if display private #end class __ASSET__assets_music_thorns_voices_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/music/Thorns_Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_music_thorns_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/music/Dadbattle_Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_music_dadbattle_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/music/breakfast.mp3") @:noCompletion #if display private #end class __ASSET__assets_music_breakfast_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/music/Eggnog_Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_music_eggnog_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/music/Blammed_Voices.mp3") @:noCompletion #if display private #end class __ASSET__assets_music_blammed_voices_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/music/Test_Voices.mp3") @:noCompletion #if display private #end class __ASSET__assets_music_test_voices_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/music/Monster_Voices.mp3") @:noCompletion #if display private #end class __ASSET__assets_music_monster_voices_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/music/Blammed_Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_music_blammed_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/music/Winter-Horrorland_Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_music_winter_horrorland_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/music/Roses_Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_music_roses_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/music/Roses_Voices.mp3") @:noCompletion #if display private #end class __ASSET__assets_music_roses_voices_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/music/Dadbattle_Voices.mp3") @:noCompletion #if display private #end class __ASSET__assets_music_dadbattle_voices_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/music/Spookeez.mp3") @:noCompletion #if display private #end class __ASSET__assets_music_spookeez_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/music/Monster.mp3") @:noCompletion #if display private #end class __ASSET__assets_music_monster_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/music/Eggnog_Voices.mp3") @:noCompletion #if display private #end class __ASSET__assets_music_eggnog_voices_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/music/Bopeebo_Voices.mp3") @:noCompletion #if display private #end class __ASSET__assets_music_bopeebo_voices_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/music/Spookeez_Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_music_spookeez_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/music/Pico_Voices.mp3") @:noCompletion #if display private #end class __ASSET__assets_music_pico_voices_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/music/titleShoot.mp3") @:noCompletion #if display private #end class __ASSET__assets_music_titleshoot_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/music/Satin-Panties_Voices.mp3") @:noCompletion #if display private #end class __ASSET__assets_music_satin_panties_voices_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/music/Milf_Voices.mp3") @:noCompletion #if display private #end class __ASSET__assets_music_milf_voices_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/music/gameOverEnd.mp3") @:noCompletion #if display private #end class __ASSET__assets_music_gameoverend_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/music/Spookeez_Voices.mp3") @:noCompletion #if display private #end class __ASSET__assets_music_spookeez_voices_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/music/Milf_Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_music_milf_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/music/Bopeebo_Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_music_bopeebo_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/music/Cocoa_Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_music_cocoa_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/music/freakyMenu.mp3") @:noCompletion #if display private #end class __ASSET__assets_music_freakymenu_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/music/gameOver.mp3") @:noCompletion #if display private #end class __ASSET__assets_music_gameover_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/music/High_Voices.mp3") @:noCompletion #if display private #end class __ASSET__assets_music_high_voices_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/music/Pico_Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_music_pico_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/music/Senpai_Voices.mp3") @:noCompletion #if display private #end class __ASSET__assets_music_senpai_voices_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/music/Fresh_Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_music_fresh_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/music/Test_Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_music_test_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/music/High_Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_music_high_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/music/South_Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_music_south_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/music/gameOver-pixel.mp3") @:noCompletion #if display private #end class __ASSET__assets_music_gameover_pixel_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/music/Senpai_Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_music_senpai_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/music/Tutorial_Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_music_tutorial_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/music/gameOverEnd-pixel.mp3") @:noCompletion #if display private #end class __ASSET__assets_music_gameoverend_pixel_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/music/Philly_Voices.mp3") @:noCompletion #if display private #end class __ASSET__assets_music_philly_voices_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/music/Philly_Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_music_philly_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/music/Satin-Panties_Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_music_satin_panties_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/music/South_Voices.mp3") @:noCompletion #if display private #end class __ASSET__assets_music_south_voices_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/music/Monster_Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_music_monster_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/music/Fresh_Voices.mp3") @:noCompletion #if display private #end class __ASSET__assets_music_fresh_voices_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/music/Cocoa_Voices.mp3") @:noCompletion #if display private #end class __ASSET__assets_music_cocoa_voices_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/music/title.mp3") @:noCompletion #if display private #end class __ASSET__assets_music_title_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/music/LunchboxScary.mp3") @:noCompletion #if display private #end class __ASSET__assets_music_lunchboxscary_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/music/Winter-Horrorland_Voices.mp3") @:noCompletion #if display private #end class __ASSET__assets_music_winter_horrorland_voices_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/sounds/fnf_loss_sfx-pixel.mp3") @:noCompletion #if display private #end class __ASSET__assets_sounds_fnf_loss_sfx_pixel_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/sounds/pixelText.mp3") @:noCompletion #if display private #end class __ASSET__assets_sounds_pixeltext_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/sounds/GF_3.mp3") @:noCompletion #if display private #end class __ASSET__assets_sounds_gf_3_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/sounds/GF_2.mp3") @:noCompletion #if display private #end class __ASSET__assets_sounds_gf_2_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/sounds/GF_1.mp3") @:noCompletion #if display private #end class __ASSET__assets_sounds_gf_1_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/sounds/Lights_Shut_off.mp3") @:noCompletion #if display private #end class __ASSET__assets_sounds_lights_shut_off_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/sounds/GF_4.mp3") @:noCompletion #if display private #end class __ASSET__assets_sounds_gf_4_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/sounds/intro1-pixel.mp3") @:noCompletion #if display private #end class __ASSET__assets_sounds_intro1_pixel_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/sounds/cancelMenu.mp3") @:noCompletion #if display private #end class __ASSET__assets_sounds_cancelmenu_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/sounds/intro2.mp3") @:noCompletion #if display private #end class __ASSET__assets_sounds_intro2_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/sounds/train_passes.mp3") @:noCompletion #if display private #end class __ASSET__assets_sounds_train_passes_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/sounds/clickText.mp3") @:noCompletion #if display private #end class __ASSET__assets_sounds_clicktext_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/sounds/intro3.mp3") @:noCompletion #if display private #end class __ASSET__assets_sounds_intro3_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/sounds/intro1.mp3") @:noCompletion #if display private #end class __ASSET__assets_sounds_intro1_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/sounds/Lights_Turn_On.mp3") @:noCompletion #if display private #end class __ASSET__assets_sounds_lights_turn_on_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/sounds/ANGRY.mp3") @:noCompletion #if display private #end class __ASSET__assets_sounds_angry_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/sounds/carPass0.mp3") @:noCompletion #if display private #end class __ASSET__assets_sounds_carpass0_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/sounds/carPass1.mp3") @:noCompletion #if display private #end class __ASSET__assets_sounds_carpass1_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/sounds/freshIntro.mp3") @:noCompletion #if display private #end class __ASSET__assets_sounds_freshintro_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/sounds/fnf_loss_sfx.mp3") @:noCompletion #if display private #end class __ASSET__assets_sounds_fnf_loss_sfx_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/sounds/confirmMenu.mp3") @:noCompletion #if display private #end class __ASSET__assets_sounds_confirmmenu_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/sounds/badnoise1.mp3") @:noCompletion #if display private #end class __ASSET__assets_sounds_badnoise1_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/sounds/thunder_2.mp3") @:noCompletion #if display private #end class __ASSET__assets_sounds_thunder_2_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/sounds/badnoise2.mp3") @:noCompletion #if display private #end class __ASSET__assets_sounds_badnoise2_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/sounds/thunder_1.mp3") @:noCompletion #if display private #end class __ASSET__assets_sounds_thunder_1_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/sounds/intro3-pixel.mp3") @:noCompletion #if display private #end class __ASSET__assets_sounds_intro3_pixel_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/sounds/introGo.mp3") @:noCompletion #if display private #end class __ASSET__assets_sounds_introgo_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/sounds/badnoise3.mp3") @:noCompletion #if display private #end class __ASSET__assets_sounds_badnoise3_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/sounds/introGo-pixel.mp3") @:noCompletion #if display private #end class __ASSET__assets_sounds_introgo_pixel_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/sounds/scrollMenu.mp3") @:noCompletion #if display private #end class __ASSET__assets_sounds_scrollmenu_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/sounds/missnote1.mp3") @:noCompletion #if display private #end class __ASSET__assets_sounds_missnote1_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/sounds/missnote3.mp3") @:noCompletion #if display private #end class __ASSET__assets_sounds_missnote3_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/sounds/missnote2.mp3") @:noCompletion #if display private #end class __ASSET__assets_sounds_missnote2_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/sounds/soundTest.mp3") @:noCompletion #if display private #end class __ASSET__assets_sounds_soundtest_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/sounds/Senpai_Dies.mp3") @:noCompletion #if display private #end class __ASSET__assets_sounds_senpai_dies_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/sounds/ANGRY_TEXT_BOX.mp3") @:noCompletion #if display private #end class __ASSET__assets_sounds_angry_text_box_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/sounds/intro2-pixel.mp3") @:noCompletion #if display private #end class __ASSET__assets_sounds_intro2_pixel_mp3 extends haxe.io.Bytes {}
@:keep @:file("CHANGELOG.md") @:noCompletion #if display private #end class __ASSET__changelog_md extends haxe.io.Bytes {}
@:keep @:font("export/release/html5/obj/webfont/vcr.ttf") @:noCompletion #if display private #end class __ASSET__assets_fonts_vcr_ttf extends lime.text.Font {}
@:keep @:file("assets/fonts/fonts-go-here.txt") @:noCompletion #if display private #end class __ASSET__assets_fonts_fonts_go_here_txt extends haxe.io.Bytes {}
@:keep @:font("export/release/html5/obj/webfont/pixel.otf") @:noCompletion #if display private #end class __ASSET__assets_fonts_pixel_otf extends lime.text.Font {}
@:keep @:file("/usr/local/lib/haxe/lib/flixel/4,8,1/assets/sounds/flixel.mp3") @:noCompletion #if display private #end class __ASSET__flixel_sounds_flixel_mp3 extends haxe.io.Bytes {}
@:keep @:file("/usr/local/lib/haxe/lib/flixel/4,8,1/assets/sounds/beep.mp3") @:noCompletion #if display private #end class __ASSET__flixel_sounds_beep_mp3 extends haxe.io.Bytes {}
@:keep @:file("/usr/local/lib/haxe/lib/flixel/4,8,1/assets/sounds/beep.ogg") @:noCompletion #if display private #end class __ASSET__flixel_sounds_beep_ogg extends haxe.io.Bytes {}
@:keep @:file("/usr/local/lib/haxe/lib/flixel/4,8,1/assets/sounds/flixel.ogg") @:noCompletion #if display private #end class __ASSET__flixel_sounds_flixel_ogg extends haxe.io.Bytes {}
@:keep @:font("export/release/html5/obj/webfont/nokiafc22.ttf") @:noCompletion #if display private #end class __ASSET__flixel_fonts_nokiafc22_ttf extends lime.text.Font {}
@:keep @:font("export/release/html5/obj/webfont/monsterrat.ttf") @:noCompletion #if display private #end class __ASSET__flixel_fonts_monsterrat_ttf extends lime.text.Font {}
@:keep @:image("/usr/local/lib/haxe/lib/flixel/4,8,1/assets/images/ui/button.png") @:noCompletion #if display private #end class __ASSET__flixel_images_ui_button_png extends lime.graphics.Image {}
@:keep @:image("/usr/local/lib/haxe/lib/flixel/4,8,1/assets/images/logo/default.png") @:noCompletion #if display private #end class __ASSET__flixel_images_logo_default_png extends lime.graphics.Image {}
@:keep @:image("/usr/local/lib/haxe/lib/flixel-ui/2,3,3/assets/images/dropdown_mark.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_dropdown_mark_png extends lime.graphics.Image {}
@:keep @:image("/usr/local/lib/haxe/lib/flixel-ui/2,3,3/assets/images/plus_mark.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_plus_mark_png extends lime.graphics.Image {}
@:keep @:image("/usr/local/lib/haxe/lib/flixel-ui/2,3,3/assets/images/radio.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_radio_png extends lime.graphics.Image {}
@:keep @:image("/usr/local/lib/haxe/lib/flixel-ui/2,3,3/assets/images/button_arrow_left.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_arrow_left_png extends lime.graphics.Image {}
@:keep @:image("/usr/local/lib/haxe/lib/flixel-ui/2,3,3/assets/images/button_thin.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_thin_png extends lime.graphics.Image {}
@:keep @:image("/usr/local/lib/haxe/lib/flixel-ui/2,3,3/assets/images/tab.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_tab_png extends lime.graphics.Image {}
@:keep @:image("/usr/local/lib/haxe/lib/flixel-ui/2,3,3/assets/images/finger_big.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_finger_big_png extends lime.graphics.Image {}
@:keep @:image("/usr/local/lib/haxe/lib/flixel-ui/2,3,3/assets/images/invis.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_invis_png extends lime.graphics.Image {}
@:keep @:image("/usr/local/lib/haxe/lib/flixel-ui/2,3,3/assets/images/chrome_inset.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_chrome_inset_png extends lime.graphics.Image {}
@:keep @:image("/usr/local/lib/haxe/lib/flixel-ui/2,3,3/assets/images/tooltip_arrow.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_tooltip_arrow_png extends lime.graphics.Image {}
@:keep @:image("/usr/local/lib/haxe/lib/flixel-ui/2,3,3/assets/images/button_arrow_right.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_arrow_right_png extends lime.graphics.Image {}
@:keep @:image("/usr/local/lib/haxe/lib/flixel-ui/2,3,3/assets/images/radio_dot.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_radio_dot_png extends lime.graphics.Image {}
@:keep @:image("/usr/local/lib/haxe/lib/flixel-ui/2,3,3/assets/images/chrome.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_chrome_png extends lime.graphics.Image {}
@:keep @:image("/usr/local/lib/haxe/lib/flixel-ui/2,3,3/assets/images/check_box.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_check_box_png extends lime.graphics.Image {}
@:keep @:image("/usr/local/lib/haxe/lib/flixel-ui/2,3,3/assets/images/button_toggle.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_toggle_png extends lime.graphics.Image {}
@:keep @:image("/usr/local/lib/haxe/lib/flixel-ui/2,3,3/assets/images/button_arrow_up.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_arrow_up_png extends lime.graphics.Image {}
@:keep @:image("/usr/local/lib/haxe/lib/flixel-ui/2,3,3/assets/images/minus_mark.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_minus_mark_png extends lime.graphics.Image {}
@:keep @:image("/usr/local/lib/haxe/lib/flixel-ui/2,3,3/assets/images/chrome_flat.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_chrome_flat_png extends lime.graphics.Image {}
@:keep @:image("/usr/local/lib/haxe/lib/flixel-ui/2,3,3/assets/images/swatch.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_swatch_png extends lime.graphics.Image {}
@:keep @:image("/usr/local/lib/haxe/lib/flixel-ui/2,3,3/assets/images/chrome_light.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_chrome_light_png extends lime.graphics.Image {}
@:keep @:image("/usr/local/lib/haxe/lib/flixel-ui/2,3,3/assets/images/hilight.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_hilight_png extends lime.graphics.Image {}
@:keep @:image("/usr/local/lib/haxe/lib/flixel-ui/2,3,3/assets/images/check_mark.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_check_mark_png extends lime.graphics.Image {}
@:keep @:image("/usr/local/lib/haxe/lib/flixel-ui/2,3,3/assets/images/tab_back.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_tab_back_png extends lime.graphics.Image {}
@:keep @:image("/usr/local/lib/haxe/lib/flixel-ui/2,3,3/assets/images/box.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_box_png extends lime.graphics.Image {}
@:keep @:image("/usr/local/lib/haxe/lib/flixel-ui/2,3,3/assets/images/finger_small.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_finger_small_png extends lime.graphics.Image {}
@:keep @:image("/usr/local/lib/haxe/lib/flixel-ui/2,3,3/assets/images/button.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_png extends lime.graphics.Image {}
@:keep @:image("/usr/local/lib/haxe/lib/flixel-ui/2,3,3/assets/images/button_arrow_down.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_arrow_down_png extends lime.graphics.Image {}
@:keep @:file("/usr/local/lib/haxe/lib/flixel-ui/2,3,3/assets/xml/default_popup.xml") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_xml_default_popup_xml extends haxe.io.Bytes {}
@:keep @:file("/usr/local/lib/haxe/lib/flixel-ui/2,3,3/assets/xml/default_loading_screen.xml") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_xml_default_loading_screen_xml extends haxe.io.Bytes {}
@:keep @:file("/usr/local/lib/haxe/lib/flixel-ui/2,3,3/assets/xml/defaults.xml") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_xml_defaults_xml extends haxe.io.Bytes {}
@:keep @:file("") @:noCompletion #if display private #end class __ASSET__manifest_default_json extends haxe.io.Bytes {}



#else

@:keep @:expose('__ASSET__assets_fonts_vcr_ttf') @:noCompletion #if display private #end class __ASSET__assets_fonts_vcr_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "assets/fonts/vcr"; #else ascender = 1800; descender = 0; height = 2000; numGlyphs = 204; underlinePosition = -292; underlineThickness = 150; unitsPerEM = 2048; #end name = "VCR OSD Mono"; super (); }}
@:keep @:expose('__ASSET__assets_fonts_pixel_otf') @:noCompletion #if display private #end class __ASSET__assets_fonts_pixel_otf extends lime.text.Font { public function new () { #if !html5 __fontPath = "assets/fonts/pixel"; #else ascender = 1125; descender = -250; height = 1375; numGlyphs = 262; underlinePosition = -143; underlineThickness = 20; unitsPerEM = 1000; #end name = "Pixel Arial 11 Bold"; super (); }}
@:keep @:expose('__ASSET__flixel_fonts_nokiafc22_ttf') @:noCompletion #if display private #end class __ASSET__flixel_fonts_nokiafc22_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "flixel/fonts/nokiafc22"; #else ascender = 2048; descender = -512; height = 2816; numGlyphs = 172; underlinePosition = -640; underlineThickness = 256; unitsPerEM = 2048; #end name = "Nokia Cellphone FC Small"; super (); }}
@:keep @:expose('__ASSET__flixel_fonts_monsterrat_ttf') @:noCompletion #if display private #end class __ASSET__flixel_fonts_monsterrat_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "flixel/fonts/monsterrat"; #else ascender = 968; descender = -251; height = 1219; numGlyphs = 263; underlinePosition = -150; underlineThickness = 50; unitsPerEM = 1000; #end name = "Monsterrat"; super (); }}


#end

#if (openfl && !flash)

#if html5
@:keep @:expose('__ASSET__OPENFL__assets_fonts_vcr_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__assets_fonts_vcr_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__assets_fonts_vcr_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__assets_fonts_pixel_otf') @:noCompletion #if display private #end class __ASSET__OPENFL__assets_fonts_pixel_otf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__assets_fonts_pixel_otf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__flixel_fonts_nokiafc22_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__flixel_fonts_nokiafc22_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__flixel_fonts_nokiafc22_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__flixel_fonts_monsterrat_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__flixel_fonts_monsterrat_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__flixel_fonts_monsterrat_ttf ()); super (); }}

#else
@:keep @:expose('__ASSET__OPENFL__assets_fonts_vcr_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__assets_fonts_vcr_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__assets_fonts_vcr_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__assets_fonts_pixel_otf') @:noCompletion #if display private #end class __ASSET__OPENFL__assets_fonts_pixel_otf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__assets_fonts_pixel_otf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__flixel_fonts_nokiafc22_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__flixel_fonts_nokiafc22_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__flixel_fonts_nokiafc22_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__flixel_fonts_monsterrat_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__flixel_fonts_monsterrat_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__flixel_fonts_monsterrat_ttf ()); super (); }}

#end

#end
#end

#end
