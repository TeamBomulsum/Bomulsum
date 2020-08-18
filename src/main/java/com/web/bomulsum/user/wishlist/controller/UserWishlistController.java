package com.web.bomulsum.user.wishlist.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
@RequestMapping(value="/user/wishlist")
public class UserWishlistController {

	
	@RequestMapping(value="/likeWriter")
	public String likeWriter() {
		return "/umyInfo/uwishList/uLikeWriter";
	}
}
