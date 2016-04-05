/* gcontainer-prefs.vala
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
	[GtkTemplate (ui = "/org/aye7/gcontainer/gcontainer-prefs.ui")]
	public class gGontainerPrefs : Gtk.Window {
		private GLib.Settings settings;

		public gGontainerPrefs (gContainerManager window) {
			//GLib.Object ();
			//settings = new GLib.Settings("org.aye7.gcontainer");
		}

	}
}

