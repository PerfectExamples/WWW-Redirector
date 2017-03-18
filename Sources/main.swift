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


func redirectHandler(data: [String:Any]) throws -> RequestHandler {
	return {
		request, response in
		response.status = .movedPermanently
		response.setHeader(.location, value: "www." + request.header(.custom(name: "host"))! + request.uri)
		response.completed()
	}
}



let port1 = 80

let confData = [
	"servers": [
		//	Redirects all traffic to www.*
		[
			"name":"localhost",
			"port":port1,
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

