/* docker-window.vala
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
using Jaa;
namespace gContainer{

	[GtkTemplate (ui="/org/aye7/gcontainer/gcontainer-manager.ui")]
	public class gContainerManager : Gtk.ApplicationWindow {

		public static string shell;
		public static GLib.Pid child_pid;
		public static Vte.Pty pty;

		[GtkChild]
		private Gtk.ListBox listbox;

		[GtkChild]
		private Gtk.Stack stack;

		[GtkChild]
		private Gtk.ScrolledWindow scrolled_images;

		[GtkChild]
		private Gtk.ScrolledWindow scrolled_containers;

		[GtkChild]
		private Gtk.Revealer sidebar;

		[GtkChild]
		private Vte.Terminal terminal;


		private Soup.Session session = new Soup.Session();
		private JParser parse;
		private Soup.Message message ;
		public gContainerManager (Gtk.Application application ) {
			GLib.Object(application: application);
			on_stacksidebar_set_focus_child();

			//this.stack.add(scrolledwindow);
			/*var uri = "http://localhost:4243/containers/9628f274f240055302a13f765f02ed034a5d42dc6e81c1563e1752db5f3f1f6c/start";
			this.message = new Soup.Message("POST", uri);
			this.session.send_message(message);
			string data = (string)message.response_body.data;
			stdout.printf ("data : %s \n", data);*/



		}

		[GtkCallback]
		private void on_stacksidebar_set_focus_child(){
			stdout.printf ("stack  page : %s\n",this.stack.visible_child_name  );


			string page_name = this.stack.visible_child_name;
			string data = "";

			var uri = "http://localhost:4243";
			uint count ;



			if (page_name == "page_images"){
				sidebar.reveal_child = false;

				uri += "/images/json?all=1";
				this.message = new Soup.Message("GET", uri);

				this.session.send_message(message);
				data = (string)message.response_body.data;
				parse = new JParser (data);

				JReaderArrayObject<DockerImage> images = new JReaderArrayObject<DockerImage>(parse.node);
				listbox = new Gtk.ListBox();
				count = images.size ;
				for (var i = 0; i<count; i++){
					stdout.printf ("%s\n",images.get(i).RepoTags.get(0));
					gContainerItem item = new gContainerItem (images.get(i));
					listbox.add (item);
				}
				scrolled_images.add (this.listbox);
				scrolled_images.show_all();

			}else if (page_name == "page_containers") {
				/********************************************************/

				sidebar.child = terminal;
				sidebar.reveal_child = true;
				terminal.reset(false,true);

				shell = Vte.get_user_shell();

				try {
					pty = new Vte.Pty.sync(Vte.PtyFlags.DEFAULT);
				} catch (Error e) {
					print(e.message + "\n");
					Posix.exit(1);
				}
				terminal.pty = pty;
				try {

					terminal.spawn_sync(Vte.PtyFlags.DEFAULT, "~/", { Vte.get_user_shell() }, null,
					SpawnFlags.SEARCH_PATH, null, out child_pid);
				} catch(Error e) {
					stderr.printf("error: %s\n", e.message);
				}
				/*******************************************************/

				uri += "/containers/json?all=1";
				this.message = new Soup.Message ("GET", uri);

				this.session.send_message (message);
				data = (string) message.response_body.data;
				parse = new JParser (data);

				JReaderArrayObject<DockerContainer> containers = new JReaderArrayObject<DockerContainer>(parse.node);
				listbox = new Gtk.ListBox();
				count = containers.size ;



				for (var i = 0; i<count; i++){
					stdout.printf ("containers[%u] id : %s \n",i, containers.get(i).Id);
					gContainerItem item = new gContainerItem (containers.get(i));
					listbox.add (item);
				}


				scrolled_containers.add (this.listbox);
				scrolled_containers.show_all();

			}






			stdout.printf ("uri : %s\n", uri);
			message.response_headers.foreach ((name, val) => {
				stdout.printf ("%s = %s\n", name, val);
			});

			stdout.printf ("Status Code: %u\n", message.status_code);
			stdout.printf ("Message length: %lld\n", message.response_body.length);

			stdout.printf ("data : %s \n", data);





		}
	}
}

