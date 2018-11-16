// ========== TABLE OF CONTENTS =========== //
//
// 1. Page Loader 
// 2. Text fitting for headlines
// 3. Parallax
// 4. Calendar
// 5. Navbar
// 6. Sidenav
// 7. Sidebar Newsfeed-1
// 8. Sidebar Newsfeed-2
// 9. Sidebar Newsfeed-3
// 10. Sidebar Newsfeed-4
// 11. Sidebar Newsfeed-5
// 12. Sidebar Newsfeed-6
// 13. News Ticker
// 14. To Top Button
// 15. Owl Carousel - News Slider & Schedule Slider
// 16. Owl Carousel - Big Gallery Slider-1	
// 17. Owl Carousel - Big Gallery Slider-2
// 18. Owl Carousel - Big Gallery Slider-3
// 19. Owl Carousel - Small Gallery Slider
// 20. Clock
// 21. Subscribe Form
// 22. Exchange Rates
// 23. Currency Converter
// 24. Sidebar Weather
// 25. Fitvids
// 26. Sidebar Scroll
//
// ======================================= //

(function($) {
    "use strict";
	
	/* 1. Page Loader */	
	$(".loader-item").delay(700).fadeOut();
	$("#pageloader").delay(1200).fadeOut("slow");

	/* 2. Text fitting for headlines */	
	$('.extra-large-caption').fitText(1.5, { minFontSize: '26px', maxFontSize: '80px' });
	$('.large-caption').fitText(1.5, { minFontSize: '26px', maxFontSize: '60px' });
	$('.medium-caption').fitText(2, { minFontSize: '20px', maxFontSize: '30px' });
	$('.small-caption').fitText(2.4, { minFontSize: '20px', maxFontSize: '26px' });
	$('.extra-small-caption').fitText(2.4, { minFontSize: '16px', maxFontSize: '22px' });
	$('.error-msg').fitText(2, { minFontSize: '36px', maxFontSize: '90px' });
	
	/* 3. Parallax */
	function parallaxInit() {
		$('.img-overlay1', '#parallax-section').parallax("100%", 0.8);
	}
	parallaxInit();

	/* 4. Calendar */
	$('#calendar').datepicker();

	/* 5. Navbar */
	// headroom
	$("#fixed-navbar").headroom({
		tolerance : 5,
		offset: $('#main-section').offset().top,
		classes: {
			pinned: "headroom-pinned",
			unpinned: "headroom-unpinned"
		}
	});
	
	// affix
	$('#fixed-navbar').affix({
		offset: {
			top: $('#fixed-navbar').offset().top
		}
	});
	
	/* 6. Sidenav */
	$('[data-sidenav]').sidenav();
	$('.navbar-toggle').attr( 'id', $('#sidenav-toggle').attr('id') );
	
	// headroom
	$("#mobile-nav").headroom({
		offset: $('#main-section').offset().top,
		classes: {
			pinned: "headroom-pinned",
			unpinned: "headroom-unpinned"
		}
	});
	// Affix
	$('#mobile-nav').affix({
		offset: {
        top: $('.top-menu').height()
      }
	});

	/* 7. Sidebar Newsfeed-1 */
	$('.newsfeed-1').easyTicker({
		direction: 'up',
		easing: 'easeOutSine',
		speed: 'slow',
		interval: 5000,
		height: 'auto',
		visible: 3,
		mousePause: 1,
	});

	/* 8. Sidebar Newsfeed-2 */
	$('.newsfeed-2').easyTicker({
		direction: 'up',
		easing: 'easeOutSine',
		speed: 'slow',
		interval: 5000,
		height: 'auto',
		visible: 4,
		mousePause: 1,
	});

	/* 9. Sidebar Newsfeed-3 */
	$('.newsfeed-3').easyTicker({
		direction: 'up',
		easing: 'easeOutSine',
		speed: 'slow',
		interval: 5000,
		height: 'auto',
		visible: 5,
		mousePause: 1,
	});

	/* 10. Sidebar Newsfeed-4 */
	$('.newsfeed-4').easyTicker({
		direction: 'up',
		easing: 'easeOutSine',
		speed: 'slow',
		interval: 3000,
		height: 'auto',
		visible: 6,
		mousePause: 1,
	});

	/* 11. Sidebar Newsfeed-5 */
	$('.newsfeed-5').easyTicker({
		direction: 'up',
		easing: 'easeOutSine',
		speed: 'slow',
		interval: 3000,
		height: 'auto',
		visible: 7,
		mousePause: 1,
	});

	/* 12. Sidebar Newsfeed-6 */
	$('.newsfeed-6').easyTicker({
		direction: 'up',
		easing: 'easeOutSine',
		speed: 'slow',
		interval: 3000,
		height: 'auto',
		visible: 8,
		mousePause: 1,
	});

	/* 13. News Ticker */
	$('.newsticker').easyTicker({
		direction: 'up',
		easing: 'easeOutSine',
		speed: 'slow',
		interval: 4000,
		height: 'auto',
		visible: 1,
		mousePause: 1,
		controls: {
			up: '.up',
			down: '.down'
		}
	});

	/* 14. To Top Button */
	$().UItoTop({
		easingType: 'easeOutQuart'
	});

	/* 15. Owl Carousel - News Slider & Schedule Slider */
	$("#news-slider,#sidebar-schedule-slider").owlCarousel({
		autoPlay: 5000,
		stopOnHover: true,
		navigation: true,
		navigationText: ["<i class='fa-angle-left'></i>", "<i class='fa-angle-right'></i>"],
		paginationSpeed: 1000,
		goToFirstSpeed: 2000,
		singleItem: true,
		autoHeight: true,
		transitionStyle: "fade"
	});

	/* 16. Owl Carousel - Big Gallery Slider-1 */
	$("#big-gallery-slider-1").owlCarousel({
		navigation: true,
		navigationText: ["<i class='fa-angle-left'></i>", "<i class='fa-angle-right'></i>"],
		items: 3 // 3 visible items
	});

	/* 17. Owl Carousel - Big Gallery Slider-2 */
	$("#big-gallery-slider-2").owlCarousel({
		navigation: true,
		navigationText: ["<i class='fa-angle-left'></i>", "<i class='fa-angle-right'></i>"],
		items: 4 // 4 visible items
	});

	/* 18. Owl Carousel - Big Gallery Slider-3 */
	$("#big-gallery-slider-3").owlCarousel({
		navigation: true,
		navigationText: ["<i class='fa-angle-left'></i>", "<i class='fa-angle-right'></i>"],
		items: 5 // 5 visible items
	});

	/* 19. Owl Carousel - Small Gallery Slider */
	$("#small-gallery-slider").owlCarousel({
		navigation: true,
		navigationText: ["<i class='fa-angle-left'></i>", "<i class='fa-angle-right'></i>"],
		items: 4, // 4 items above 1400px browser width
		itemsDesktop: [1400, 3], // 3 items between 1400px and 901px
		itemsDesktopSmall: [900, 2], // 2 items betweem 900px and 601px
		itemsTablet: [600, 1], // 1 items between 600 and 0
		itemsMobile: false // itemsMobile disabled - inherit from itemsTablet option
	});
	
	/* 20. Clock */
	function getDate() {
		var date = new Date();
		var weekday = date.getDay();
		var month = date.getMonth();
		var day = date.getDate();
		var year = date.getFullYear();
		var hour = date.getHours();
		var minutes = date.getMinutes();
		var seconds = date.getSeconds();
		if (hour < 10) hour = "0" + hour;
		if (minutes < 10) minutes = "0" + minutes;
		if (seconds < 10) seconds = "0" + seconds;
		var monthNames = ["January", "February", "Sep", "April", "May", "June", "July", "August",
			"September", "October", "December", "December"
		];
		var weekdayNames = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday",
			"Saturday"
		];
		var ampm = " PM ";
		if (hour < 12) ampm = " AM ";
		if (hour > 12) hour -= 12;
		var showDate = weekdayNames[weekday] + ", " + monthNames[month] + " " + day + ", " + year;
		var showTime = hour + ":" + minutes + ":" + seconds + ampm;
		document.getElementById('date').innerHTML = showDate;
		document.getElementById('time').innerHTML = showTime;
		requestAnimationFrame(getDate);
	}
	getDate();

	/* 21. Subscribe Form */
	$('#subscribeForm').ketchup().submit(function() {
		if ($(this).ketchup('isValid')) {
			var action = $(this).attr('action');
			$.ajax({
				url: action,
				type: 'POST',
				data: {
					email: $('#address').val()
				},
				success: function(data) {
					$('#result').html(data);
				},
				error: function() {
					$('#result').html('Sorry, an error occurred.');
				}
			});
		}
		return false;
	});

	/* 22. Exchange Rates */
	$.getJSON("https://api.fixer.io/latest?base=USD", function(data) {
		var cDate = data.date;
		$('#cdate').append(' ' + cDate);
		$('#euro').append(" " + data.rates.EUR);
		$('#pound').append(" " + data.rates.GBP);
		$('#yen').append(" " + data.rates.JPY);
		$('#franc').append(" " + data.rates.CHF);
		$('#cdollar').append(" " + data.rates.CAD);
		$('#adollar').append(" " + data.rates.AUD);
		$('#ron').append(" " + data.rates.RON);
		$('#rub').append(" " + data.rates.RUB);
	});

	/* 23. Currency Converter */
	$.get('http://api.fixer.io/latest?base=ZAR', function(data) {
		var countryObject = data.rates;
		for (var key in countryObject) {
			if (countryObject.hasOwnProperty(key)) {
				$('select').append('<option val="' + key + '">' + key + '</option>');
			}
		}
		$('.convertFrom').change(function() {
			var thisValue = $('.convertFrom .selectpicker').val();
			$.get('http://api.fixer.io/latest?base=' + thisValue, function(newData) {
				countryObject = newData.rates;
			});
		});
		$('form1').on('submit', function(e) {
			e.preventDefault();
			var convertingTo = $('.convertTo .selectpicker').val(),
				toRate = countryObject[convertingTo],
				amount = $('.currencyValue').val();
			var calculation = amount * toRate;
			if (calculation === 0) {
				$('.output').html('Please enter a valid amount.');
			} else {
				$('.output').html(parseFloat(calculation).toFixed(3));
			}
		});
	});

	/* 24. Sidebar Weather */
	var currWeather = {};
	$(document).ready(function() {
		currWeather = getLocationAndWeather('imperial');
		$('.btn1').click(switchScale);
	});

	function switchScale() {
		if ($('.btn>.switch').text() === 'C') {
			$('.btn>.switch').text('F');
			$('.btn').blur();
			getLocationAndWeather('imperial');
		} else {
			$('.btn>.switch').text('C');
			$('.btn').blur();
			getLocationAndWeather('metric');
		}
	}

	function getLocationAndWeather(scale) {
		return getWeather({
			lat: -37.817011,
			long: 144.955882
		}, scale);
	}

	function getWeather(location, scale) {
		$.getJSON('http://api.openweathermap.org/data/2.5/weather', {
			APPID: '7c58f952e569d33ed1fdf52bad9b6f10',
			lat: location.lat,
			lon: location.long,
			units: scale
		}, function(results) {
			var wthr = {
				city: results.name,
				wind_speed: (parseFloat(results.wind.speed) * 2.2369362920544).toFixed(1),
				type: results.weather[0].main,
				humidity: results.main.humidity,
				temp: results.main.temp
			};
			setWeather(wthr, scale);
			return wthr;
		});
	}

	function setWeather(weather, scale) {
		$('.weather-city-text', '#weather').text(weather.city);
		$('#type').text(weather.type);
		$('#humidity').text('Humidity: ' + weather.humidity + '%');
		var spdUnit = 'm/s';
		if (scale === 'imperial') spdUnit = 'mph';
		$('#wind').text('Wind: ' + weather.wind_speed + spdUnit);
		$('.temperature', '#weather').text(weather.temp);
		setWeatherType(weather.type);
	}

	function setWeatherType(wType) {
		var icons = {
			Clear: ['wi-day-sunny', '#CFD8DC'],
			Rain: ['wi-rain', '#CFD8DC'],
			Clouds: ['wi-cloudy', '#CFD8DC'],
			Mist: ['wi-fog', '#CFD8DC'],
			Thunderstorm: ['wi-thunderstorm', '#CFD8DC'],
			Snow: ['wi-snow', '#CFD8DC']
		};
		var $iconElem = $('.weather-icon', '#weather');
		//Change the icon
		$iconElem.removeClass('wi-day-sunny wi-rain wi-cloudy wi-fog wi-thunderstorm wi-snow')
		        .addClass(icons[wType][0])
		        .css({
			           'color': icons[wType][1]
		           });
	}

	/* 25. FitVids plugin for readjusting video sizes */
	    $(".video-container").fitVids();

	/* 26. Sidebar Scroll */
	$(".sidebar-scroll").mCustomScrollbar({
		setWidth: false,
		setHeight: 876,
		setTop: 0,
		setLeft: 0,
		axis: "y",
		scrollbarPosition: "outside",
		scrollInertia: 950,
		autoDraggerLength: true,
		autoHideScrollbar: false,
		autoExpandScrollbar: false,
		alwaysShowScrollbar: 0,
		snapAmount: null,
		snapOffset: 0,
		mouseWheel: {
			enable: true,
			scrollAmount: 200,
			axis: "y",
			preventDefault: false,
			deltaFactor: "auto",
			normalizeDelta: true,
			invert: false,
			disableOver: ["select", "option", "keygen", "datalist", "textarea"]
		},
		scrollButtons: {
			enable: false,
			scrollType: "stepless",
			scrollAmount: "auto"
		},
		keyboard: {
			enable: true,
			scrollType: "stepless",
			scrollAmount: "auto"
		},
		contentTouchScroll: 25,
		advanced: {
			autoExpandHorizontalScroll: false,
			autoScrollOnFocus: "input,textarea,select,button,datalist,keygen,a[tabindex],area,object,[contenteditable='true']",
			updateOnContentResize: true,
			updateOnImageLoad: true,
			updateOnSelectorChange: false,
			releaseDraggableSelectors: false
		},
		theme: "light",
		callbacks: {
			onInit: false,
			onScrollStart: false,
			onScroll: false,
			onTotalScroll: false,
			onTotalScrollBack: false,
			whileScrolling: false,
			onTotalScrollOffset: 0,
			onTotalScrollBackOffset: 0,
			alwaysTriggerOffsets: true,
			onOverflowY: false,
			onOverflowX: false,
			onOverflowYNone: false,
			onOverflowXNone: false
		},
		live: false,
		liveSelector: null
	});

})(jQuery);

