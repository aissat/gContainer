/* JParser.vala
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
	public class JParser : Json.Parser{
		public Json.Node? node { get; private set; }

		public JParser (string data){

			try {
				this.load_from_data (data);
			} catch (Error e) {
				stdout.printf ("Unable to parse data: %s\n", e.message);
			}
			this.node = this.get_root ();
		}

	}
}
