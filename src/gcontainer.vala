namespace GContainer{
	public class gContainer : Gtk.Application {

		private gContainerManager window;

		public gContainer () {
			application_id  = "org.aye7.gcontainer";
			flags          |= GLib.ApplicationFlags.HANDLES_OPEN;
		}

		public override void activate(){
			window = new gContainerManager (this);
			window.present();
		}

	}
}
