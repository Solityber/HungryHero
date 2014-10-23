package
{
	import flash.display.Bitmap;
	import flash.display3D.textures.Texture;
	import flash.utils.Dictionary;

	public class Assets
	{
		[Embed(source="../media/graphics/bgWelcome.jpg")]
		public static const BgWelcome:Class;
		
		[Embed(source="../media/graphics/welcome_hero.png")]
		public static const BgWelcome:Class;
		
		[Embed(source="../media/graphics/welcome_title.png")]
		public static const BgWelcome:Class;
		
		[Embed(source="../media/graphics/welcome_playButton.png")]
		public static const BgWelcome:Class;
		
		[Embed(source="../media/graphics/welcome_aboutButton.png")]
		public static const BgWelcome:Class;
		
		private static var gameTextures:Dictionary = new Dictionary();
		
		public static function getTexture(name:String):Texture
		{
			if (gameTextures[name] == undefined)
			{
				var bitmap:Bitmap = new Assets[name]();
				gameTextures[name] = Texture.fromBitmap[bitmap];
			}
			return gameTextures[name];
			}
		}
	}