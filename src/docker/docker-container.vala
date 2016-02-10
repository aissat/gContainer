/* container.vala
 *
 * Copyright (C) 2016 aye7 <mr.aissat@gmail.com>
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */
using EasyJSON;

namespace GContainer {
	public class DockerContainer : GLib.Object  {

		public string Id;
		public string Hostname       { get; set; default = ""; }
		public string Domainname     { get; set; default = ""; }
		public string User           { get; set; default = ""; }
		public bool   AttachStdin    { get; set; default = false; }
		public bool   AttachStdout   { get; set; default = true ; }
		public bool   AttachStderr   { get; set; default = true ; }
		public bool   Tty            { get; set; default = false; }
		public bool   OpenStdin      { get; set; default = false; }
		public bool   StdinOnce      { get; set; default = false; }
		public string Env ;
		public string Cmd ;
		public string Entrypoint ;
		public string Image;
		public string Labels;
		public string Volumes ;
		public string WorkingDir ;
		public bool   NetworkDisabled ;
		public string MacAddress ;
		public string ExposedPorts ;

		public DockerContainerHostConf host_conf;


		public DockerContainer (){

		}

		public void exec (){

		}

		// POST /containers/create
		public void create (){

			var obj = new JSONObject(
				"Hostname",         JVal.String,  "",
				"Domainname",       JVal.String,  "",
				"User",             JVal.String,  "",
				"HostConfig",       JVal.Object,  new JSONObject("CustomerID", JVal.Int, 67890),
				"AttachStdin",      JVal.Bool,    false,
				"AttachStdout",     JVal.Bool,    true,
				"AttachStderr",     JVal.Bool,    true,
				"Tty",              JVal.Bool,    false,
				"OpenStdin",        JVal.Bool,    false,
				"StdinOnce",        JVal.Bool,    false,
				"Env",              JVal.Array,   "array"
				);
		}

		// GET /containers/(id)/json
		public void info (){

		}

		// GET /containers/(id)/top
		// Expl : GET /containers/(id)/top?ps_args=aux
		public void top (){

		}
		// GET /containers/(id)/logs
		// Expl :  GET /containers/4fa6e0f0c678/logs?stderr=1&stdout=1&timestamps=1&follow=1&tail=10&since=1428990821
		public void loges(){

		}

		// GET /containers/(id)/changes
		public void changes (){

		}

		// GET /containers/(id)/export
		public void export (){

		}

		// GET /containers/(id)/stats
		public void stats (){

		}

		// POST /containers/(id)/resize?h=<height>&w=<width>
		public void resize_tty (uint height, uint width){

		}

		// POST /containers/(id)/start
		public void start (){

		}

		// POST /containers/(id)/stop
		public void stop (){

		}

		// POST /containers/(id)/restart
		public void restart (){

		}

		// POST /containers/(id)/kill
		public void kill (){

		}

		// POST /containers/(id)/rename
		// Expl : POST /containers/e90e34656806/rename?name=new_name
		public void rename (string name){

		}
		// POST /containers/(id)/pause
		public void pause (){

		}

		// POST /containers/(id)/unpause
		public void unpause (){

		}

		// POST /containers/(id)/attach
		// Expl : POST /containers/16253994b7c4/attach?logs=1&stream=0&stdout=1
		public void attach (){

		}
		// GET /containers/(id)/attach/ws
		public void ws (){

		}

		// POST /containers/(id)/wait
		public void wait (){

		}

		// DELETE /containers/(id)
		public void delete (){

		}

		// POST /containers/(id)/copy
		public void copy (){

		}
	}
}
