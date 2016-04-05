/* container-hos-conf.vala
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

	public class DockerContainerHostConf : Object  {

		public string  NetworkMode          { get; set; default = ""; }/*
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
		public string  CgroupParent;*/

		construct{

		}

		public DockerContainerHostConf () {

		}
	}
}
