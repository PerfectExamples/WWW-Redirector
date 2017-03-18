//
//  main.swift
//  WWWRedirector
//
//  Created by Jonathan Guthrie on 2017-03-18.
//	Copyright (C) 2017 PerfectlySoft, Inc.
//
//===----------------------------------------------------------------------===//
//
// This source file is part of the Perfect.org open source project
//
// Copyright (c) 2015 - 2017 PerfectlySoft Inc. and the Perfect project authors
// Licensed under Apache License v2.0
//
// See http://perfect.org/licensing.html for license information
//
//===----------------------------------------------------------------------===//
//

import PerfectLib
import PerfectHTTP
import PerfectHTTPServer
import SwiftString

func redirectHandler(data: [String:Any]) throws -> RequestHandler {
	return {
		request, response in

		let host = request.header(.custom(name: "host")) ?? ""
		if host.startsWith("www.") {
			response.setBody(string: "<html><head></head><body>ERROR: This is already a www host, cannot redirect further. Please check your DNS.</body></html>")
			response.completed()
		} else if host.isEmpty {
			response.setBody(string: "<html><head></head><body>ERROR: No host header supplied.</body></html>")
			response.completed()
		}

		response.status = .movedPermanently
		response.setHeader(.location, value: "www." + host + request.uri)
		response.completed()
	}
}


let confData = [
	"servers": [
		[
			"name":"localhost",
			"port":80,
			"routes":[
				["method":"get", "uri":"/**", "handler":redirectHandler]
			]
		]
	]
]

do {
	// Launch the servers based on the configuration data.
	try HTTPServer.launch(configurationData: confData)
} catch {
	fatalError("\(error)") // fatal error launching one of the servers
}

