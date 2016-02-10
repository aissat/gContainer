/* container-hos-conf.vala
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
namespace GContainer{

	public class DockerContainerHostConf : EasyJSON.JSONObject  {

		public string  Binds ;
		public string  Links;
		public string  LxcConf          { get; set; default = ""; }
		public uint    Memory           { get; set; default = 0; }
		public uint    MemorySwap       { get; set; default = 0; }
		public uint    CpuShares        { get; set; default = 512; }
		public uint    CpuPeriod        { get; set; default = 1000000; }
		public uint    CpuQuota         { get; set; default = 50000; }
		public double  CpusetCpus       { get; set; default =  0.1; }
		public double  CpusetMems       { get; set; default =  0.1; }
		public uint    BlkioWeight      { get; set; default =  300; }
		public bool    OomKillDisable   { get; set; default =  false; }
		public string  PortBindings     { get; set; default =  ""; }
		public bool    PublishAllPorts  { get; set; default =  false; }
		public bool    Privileged       { get; set; default =  false; }
		public bool    ReadonlyRootfs   { get; set; default =  false; }
		public string  Dns;
		public string  DnsSearch;
		public string  ExtraHosts;
		public string  VolumesFrom;
		public string  CapAdd;
		public string  CapDrop;
		public string  RestartPolicy;
		public string  NetworkMode;
		public string  Devices;
		public string  Ulimits;
		public string  LogConfig;
		public string  SecurityOpt;
		public string  CgroupParent;

		public DockerContainerHostConf () {

		}
	}
}
