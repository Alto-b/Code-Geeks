"use strict";/*!feed.js | Friendkit | © Css Ninja. 2019-2020*/$(document).ready((function(){$("#activity-feed").length&&$(".feed-menu-v1").length&&($(".feed-menu-v1 .main-menu li.is-active").find(".submenu").slideDown(),$(".feed-menu-v1 .main-menu li").on("click",(function(){$(this).siblings("li").removeClass("is-active").find(".submenu").slideUp(),$(this).addClass("is-active").find(".submenu").slideDown()}))),$("#share-modal").length&&($(".share-dropdown").on("click",(function(){$(this).toggleClass("is-active")})),$(".share-dropdown .dropdown-item").on("click",(function(){var i=$(this).attr("data-target-channel"),e=$(this).find("i").attr("class"),s=$(this).find("h3").text();void 0!==i&&($(".share-dropdown .button").find("i").removeClass().addClass(e),$(".share-dropdown .button").find("span").text(s),$(".share-channel-control").addClass("is-hidden"),$(".footer-action.is-active").removeClass("is-active"),$("#share-to-"+i).removeClass("is-hidden").find("input").focus())})),$(".page-dropdown").on("click",(function(){$(this).toggleClass("is-active")})),$(".action-wrap .footer-action").on("click",(function(){var i=$(this).attr("data-target-action");$(".footer-action.is-active").removeClass("is-active"),$(this).addClass("is-active"),void 0!==i&&($(".bottom-share-inputs .field").addClass("is-hidden"),$("#action-"+i).removeClass("is-hidden").find("input").focus())}))),$(".feed-slider-wrapper").length&&$(".feed-slider-inner").slick({centerMode:!0,centerPadding:"10px",slidesToShow:3,prevArrow:"<div class='slick-custom is-prev'><i class='mdi mdi-chevron-left'></i></div>",nextArrow:"<div class='slick-custom is-next'><i class='mdi mdi-chevron-right'></i></div>",responsive:[{breakpoint:768,settings:{arrows:!1,centerMode:!0,centerPadding:"40px",slidesToShow:3}},{breakpoint:480,settings:{arrows:!1,centerMode:!0,centerPadding:"40px",slidesToShow:1}}]})}));