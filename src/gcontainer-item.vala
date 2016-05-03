/* gcontainer-item.vala
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
namespace  gContainer{
	[GtkTemplate (ui="/org/aye7/gcontainer/gcontainer-item.ui")]
	public class gContainerItem : Gtk.ListBoxRow {

		[GtkChild]
		private Gtk.Label source_title;

		[GtkChild]
		private Gtk.Label created_label;

		[GtkChild]
		private Gtk.Label id_label;

		[GtkChild]
		private Gtk.Label parentid_label;

		[GtkChild]
		private Gtk.LevelBar levelbar1;

		public gContainerItem (Object? object) {
			if ( object.get_type () == typeof (DockerImage) ){
				var image = object as DockerImage;
				source_title.set_text   (image.RepoTags.get (0) );
				parentid_label.set_text (image.ParentId);
				var time = new DateTime.from_unix_utc (image.Created);
				created_label.set_text  ( time.to_string () );
				id_label.set_text       (image.Id[7:-1]);
			}else if ( object.get_type () == typeof (DockerContainer) ){
				var container = object as DockerContainer;
				source_title.set_text   (container.Image );
				parentid_label.set_text (container.Names.get (0) );
				var time = new DateTime.from_unix_utc (container.Created);
				created_label.set_text  ( time.to_string () );
				id_label.set_text       (container.Id[0:15]);
				if(container.Status[0:2] == "Up")  levelbar1.set_value(100.0);
			}
			this.show_all();
		}


	}
}
