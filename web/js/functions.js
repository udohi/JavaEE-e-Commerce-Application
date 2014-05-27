$(function() {
	$('#slider ul.slider-items').jcarousel({
		'scroll': 1,
		'auto': 3,
		'wrap': 'both',
        initCallback: mycarousel_initCallback,
        itemVisibleInCallback: {
			onAfterAnimation: function(c, o, i, s) {
				jQuery('.slider-nav li').removeClass('active');
				jQuery('.slider-nav li:eq('+ (i-1) +')').addClass('active');
			}
		}
	});
	
	$('#product-slider').jcarousel({
		'scroll': 1,
		'auto': 3,
		'wrap': 'both'
	});
	
	$('#navigation li').hover(function(){
		$(this).find('.dd:first').show();
	}, function(){
		$(this).find('.dd:first').hide();
	});
	
	$('#navigation li:not(.active) .dd').hover(function(){
		$(this).parent().addClass('pr-active');
	}, function(){
		$(this).parent().removeClass('pr-active');
	});
	
	Cufon.replace('.slider-items h2, .slider-items h3, .slider-items h4:not(.short)', {
		textShadow: '-1px 1px 1px #000',
		letterSpacing: '-2px',
		wordSpacing: '3px'
	});
	Cufon.replace('.slider-items h4.short', {
		letterSpacing: '-1px',
		textShadow: '-1px 1px 1px #000'
	});
	
	if ($.browser.msie && $.browser.version == 6) {
		DD_belatedPNG.fix('#wrapper, h1#logo a, .shopping, #top-nav a, #navigation, .dd a, #slider, .button , .button span, .more, .product .price, .price .inner, #product-slider .info, #product-slider .jcarousel-prev, #product-slider .jcarousel-next, #footer, .boxes, .copy, .box-entry img, .social-box img');
	}
});

function mycarousel_initCallback(carousel) {
	
	var _arrows = $('#slider .jcarousel-prev, #slider .jcarousel-next');
	_arrows.hide();
	
	$('#slider .shell').hover(function(){
		_arrows.show().addClass('carousel-active');
	}, function(){
		_arrows.hide().removeClass('carousel-active');
	});
	
	$('.slider-nav').append('<ul></ul>');
	$('.slider-items li').each(function(){
		$('.slider-nav ul').append('<li><a href="#">&nbsp;</a></li>');
	});
	
	$('.slider-nav').css('margin-left', function(){
		return (-($(this).width() / 2) + 15) + 'px';
	});
	
    $('.slider-nav a').bind('click', function() {
        carousel.scroll(jQuery.jcarousel.intval((jQuery(this).parent().index()) + 1));
        return false;
    });
};