/* images.vala
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
namespace gContainer{
	public class DockerImage :Object {

		public ArrayList <string>  RepoTags  { get; set; }
		public ArrayList <string>  RepoDigests  { get; set; }
		public string  Id                { get; set; default = ""; }
		public string  ParentId          { get; set; default = ""; }
		public uint  Created             { get; set; default = -1;  }
		public uint  Size                { get; set; default = -1;  }
		public uint  VirtualSize         { get; set; default = -1;  }
		//public string  Labels            { get; set; default = ""; }

		construct{
			RepoTags = new ArrayList<string> ();
			RepoDigests = new ArrayList<string> ();
		}
		public DockerImage ( )
		{
		}

	}
}
