/* gcontainer.vala
 *
 * Copyright (C) 2016 aye7 <mr.aissat@gmail.com>
 *
 * Released under terms of Waqf Public License.
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the latest version Waqf Public License as
 * published by Ojuba.org.
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
 * The Latest version of the license can be found on
 * "http://waqf.ojuba.org/license"
 */

namespace gContainer{
	public class gContainer : Gtk.Application {

		private gContainerManager window;
		private Gtk.AboutDialog About;

		public gContainer () {
			application_id  = "org.aye7.gcontainer";
			flags          |= GLib.ApplicationFlags.FLAGS_NONE;
		}

		public override void activate(){
			window = new gContainerManager (this);
			window.present();
		}

		/*
		 *
		 */
		private void preferences(){
			var prefs = new gGontainerPrefs (window);
			prefs.present ();
		}

		private void about ( ){
			var builder  = new Gtk.Builder.from_resource ("/org/aye7/gcontainer/gcontainer-about.ui");
			this.About = builder.get_object ("gContainerAbout") as Gtk.AboutDialog;
			About.set_transient_for (window);
			this.About.show_all ();
		}

		public override void startup (){
			base.startup ();
			var action = new GLib.SimpleAction ("preferences",null);
			action.activate.connect (preferences);
			add_action (action);

			action   = new GLib.SimpleAction ("about",null);
			action.activate.connect (about);
			add_action (action);

			action    = new GLib.SimpleAction ("quit",null);
			action.activate.connect (quit);
			add_action (action);
			add_accelerator ("<Ctrl>Q","app.quit",null);

			var builder  = new Gtk.Builder.from_resource ("/org/aye7/gcontainer/gcontainer-menu.ui");
			var app_menu = builder.get_object ("appmenu") as GLib.MenuModel;
			set_app_menu (app_menu);
		}

	}
}
