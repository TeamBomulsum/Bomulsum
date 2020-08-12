package com.web.bomulsum.writer.message.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/writer")
public class WriterMessageController {

	
	@RequestMapping(value="message")
	public String writeMessage() {
		return "/wmessage/messageList";
	}
	
}
