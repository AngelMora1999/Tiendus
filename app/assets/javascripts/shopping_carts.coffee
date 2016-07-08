# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).on "ready page:load", ()->
	$(".card-btn").on "click", ()->
		$(".modal").addClass("inline-block")
		$(".close-modal").parent().slideDown()	
	$(".close-modal").on "click", ()->
		$(this).parent().slideUp()
		$(".modal").removeClass("inline-block")