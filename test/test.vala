/* test.vala
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
using Gee;
namespace gContainer {
	int main () {

		string data = "";

		Soup.Session session = new Soup.Session();
		JParser parse;
		Soup.Message message ;
		var uri = "http://localhost:4243";//4243
		uint count ;

		uri += "/containers/json?all=1";
		message = new Soup.Message("GET", uri);

		session.send_message(message);
		data = (string)message.response_body.data;
		parse = new JParser (data);

		JReaderArrayObject<DockerContainer> containers = new JReaderArrayObject<DockerContainer>(parse.node);

		count = containers.size ;
		for (var i = 0; i<count; i++){
			stdout.printf ("%s\n",containers.get(i).Id);
		}
		return 0;
	}
}
