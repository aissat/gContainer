/* container.vala
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

using Gee;
namespace gContainer {
	public class DockerContainer : Object  {

		public string Id              { get; set; default = ""; }
		public string Image           { get; set; default = ""; }
		public string ImageID         { get; set; default = ""; }
		public string Command         { get; set; default = ""; }
		public string Status          { get; set; default = ""; }
		//public string NetworkSettings { get; set; default = ""; }
		public int    Created         { get; set; default = -1; }
		public int SizeRw             { get; set; default = -1; }
		public int SizeRootFs         { get; set; default = -1; }
		public ArrayList<string> Ports  { get; set; }
		public ArrayList<string>Names   { get; set; }
		//public ArrayList<string> Labels { get; set; }
		//public DockerContainerHostConf HostConfig  { get; set; }

		/*public string Hostname     { get; set; default = ""; }
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

		public string Volumes ;
		public string WorkingDir ;
		public bool   NetworkDisabled ;
		public string MacAddress ;
		public string ExposedPorts ;

		public DockerContainerHostConf host_conf;*/

		construct{
			//HostConfig = new DockerContainerHostConf ();
			Names     = new ArrayList<string> ();
			Ports      = new ArrayList<string> ();

		}
		public DockerContainer (){

		}

		public void exec (){

		}

		// POST /containers/create
		public void create (){

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
