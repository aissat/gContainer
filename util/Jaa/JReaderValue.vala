/* JReaderValue.vala
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

namespace Jaa {

	public class JReaderValue <T> : Object {

		private Value    _value ;

		public JReaderValue (Json.Node   node ){
			if (node.get_node_type () == Json.NodeType.ARRAY){
				_value = Value(typeof(JReaderArrayObject));
				_value = new JReaderArrayObject<T>(node);
			}else {
				_value = Value(typeof(JReaderObject));
				_value = new JReaderObject<T>(node);
			}
		}

		public T get_object(){
			return _value.get_object();
		}

		public ArrayList? get_array(){
			return (ArrayList)_value.get_object();
		}

		public Value get_value(){
			return _value;
		}

	}
}
