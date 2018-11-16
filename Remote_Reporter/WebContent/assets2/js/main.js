jQuery(function($) {
    'use strict';

    (function() {

        $(window).on('load', function() {

            /*
            =========================================================================================
            1. Spinner 
            =========================================================================================
            */
            $(".outslider_loading").fadeOut("slow");

        });
    }());

    
    (function() {
        $(window).on('scroll', function() {
                /*
                =========================================================================================
                2. NAVBAR 
                =========================================================================================
                */

                if ($(window).scrollTop() > 10) {
                    $(".header-area").addClass("ds_padding");
                } else {
                    $(".header-area").removeClass("ds_padding");
                } 

                var topHeight2 = $(".v3-header-top").outerHeight();
                var windowScroll2 = $(window).scrollTop();

                if (windowScroll2 > topHeight2) {
                    $(".v3-header nav").addClass("navbar-fixed-top");
                } else {
                    $(".v3-header nav").removeClass("navbar-fixed-top");
                }

                if ($(window).scrollTop() > topHeight2) {
                    $(".v3-header-bg").addClass("ds_padding");
                } else {
                    $(".v3-header-bg").removeClass("ds_padding");
                }
                /*
                =========================================================================================
                3. PROGRESS BAR
                =========================================================================================
                */

                $(".progress_cont").each(function() {
                    var base = $(this);
                    var windowHeight = $(window).height();
                    var itemPos = base.offset().top;
                    var scrollpos = $(window).scrollTop() + windowHeight - 100;
                    if (itemPos <= scrollpos) {
                        var auptcoun = base.find(".progress-bar").attr("aria-valuenow");
                        base.find(".progress-bar").css({
                            "width": auptcoun + "%"
                        });
                        var str = base.find(".skill>span").text();
                        var res = str.replace("%", "");
                        if (res == 0) {
                            $({
                                countNumber: 0
                            }).animate({
                                countNumber: auptcoun
                            }, {
                                duration: 4000,
                                easing: 'linear',
                                step: function() {
                                    base.find(".skill>span").text(Math.ceil(this.countNumber) + "%");
                                }
                            });
                        }
                    }
                }); 


        });

    }());



        /*
        =========================================================================================
        4. MEGA MENU
        =========================================================================================
        */
        $("#menuzord").menuzord();

        /*
        =========================================================================================
        5. SEARCH OVERLY
        =========================================================================================
        */
        $(".filter-search").click(function() {
            $(".full-page-search").addClass("open-search");
        });
        $(".sr-overlay").click(function() {
            $(".full-page-search").removeClass("open-search");
        });

        /*
        =========================================================================================
        6. LOGIN OVERLY
        =========================================================================================
        */
        $(".log-in-search").click(function() {
            $(".log-in-up").addClass("open-log-in");
        });
        $(".remove-log-in").click(function() {
            $(".log-in-up").removeClass("open-log-in");
        });

        /*
        =========================================================================================
        7 RIGHT MENU SIDEBAR
        =========================================================================================
        */
          $('.right_menu').click(function(){
              $('.right-full-menu').addClass('menu_show');
          });


          $('.close_ic').click(function(){
              $('.right-full-menu').removeClass('menu_show');
          });

        /*
        =========================================================================================
        8. CONSULTATION  OVERLY
        =========================================================================================
        */
        $(".consult-search").click(function() {
            $(".consult-up").addClass("open-consult");
        });
        $(".remove-consult").click(function() {
            $(".consult-up").removeClass("open-consult");
        });        

        /*
        =========================================================================================
        9. HELP SLIDER  
        =========================================================================================
        */ 
        var help_slider = $("#help-slider");
        help_slider.owlCarousel({
            loop: true,
            margin: 10,
            nav: false,
            responsive: {
                0: {
                    items: 1
                },
                400: {
                    items: 1
                },
                768: {
                    items: 1
                },
                1200: {
                    items: 1
                }
            }
        });

        /*
        =========================================================================================
        10. CLIENT SLIDER   
        =========================================================================================
        */ 
        var client_slider = $("#client-slider");
        client_slider.owlCarousel({
            loop: true,
            margin: 0,
            nav: false,
            responsive: {
                0: {
                    items: 2
                },
                400: {
                    items: 2
                },
                768: {
                    items: 4
                },
                1200: {
                    items: 6
                }
            }
        });

        /*
        =========================================================================================
        11. CLIENT 2 SLIDER   
        =========================================================================================
        */ 
        var client_bg_slider = $("#client-bg-slider");
        client_bg_slider.owlCarousel({
            loop: true,
            margin: 0,
            nav: false,
            dots: false,
            responsive: {
                0: {
                    items: 2
                },
                400: {
                    items: 2
                },
                768: {
                    items: 4
                },
                1200: {
                    items: 6
                }
            }
        });

        /*
        =========================================================================================
        12. CLIENT 2 SLIDER   
        =========================================================================================
        */ 
        var client_bg_2_slider = $("#client-bg-2-slider");
        client_bg_2_slider.owlCarousel({
            loop: true,
            margin: 30,
            nav: false,
            responsive: {
                0: {
                    items: 1
                },
                400: {
                    items: 1
                },
                768: {
                    items: 2
                },
                1200: {
                    items:3
                }
            }
        });    
        /*
        =========================================================================================
        13. SOLUTION SLIDER   
        =========================================================================================
        */ 
        var solution_slider = $("#solution-slider");
        solution_slider.owlCarousel({
            loop: true,
            margin: 30,
            nav: false,
            responsive: {
                0: {
                    items: 1
                },
                400: {
                    items: 1
                },
                768: {
                    items: 2
                },
                1200: {
                    items: 3
                }
            }
        });
        /*
        =========================================================================================
        14. TESTIMONIAL SLIDER   
        =========================================================================================
        */ 
        var testimonial_slider = $("#testimonial-slider");
        testimonial_slider.owlCarousel({
            loop: true,
            margin: 30,
            nav: true,
            navText: ['<i class="fa fa-angle-left"></i>','<i class="fa fa-angle-right"></i>'],
            responsive: {
                0: {
                    items: 1
                },
                400: {
                    items: 1
                },
                768: {
                    items: 1
                },
                1200: {
                    items: 1
                }
            }
        }); 
        /* 
        =========================================================================================
        15. TESTIMONIAL SLIDER   
        =========================================================================================
        */ 
        var testimonial_slider2 = $("#testimonial-slider-2");
        testimonial_slider2.owlCarousel({
            loop: true,
            margin: 30,
            nav: true,
            navText: ['<i class="fa fa-angle-left"></i>','<i class="fa fa-angle-right"></i>'],
            responsive: {
                0: {
                    items: 1
                },
                400: {
                    items: 1
                },
                768: {
                    items: 1
                },
                1200: {
                    items: 1
                }
            }
        }); 
        /* 
        =========================================================================================
        16. TESTIMONIAL SLIDER   
        =========================================================================================
        */ 
        var testimonial_slider3 = $("#testimonial-slider-3");
        testimonial_slider3.owlCarousel({
            loop: true,
            margin: 30,
            nav: true,
            navText: ['<i class="fa fa-angle-left"></i>','<i class="fa fa-angle-right"></i>'],
            responsive: {
                0: {
                    items: 1
                },
                400: {
                    items: 1
                },
                768: {
                    items: 1
                },
                1200: {
                    items: 1
                }
            }
        });         
        /*
        =========================================================================================
        17. INTRO SLIDER   
        =========================================================================================
        */ 
        var intro_slider = $("#intro-slider");
        intro_slider.owlCarousel({
            loop: true,
            margin: 0,
            dots: false,
            nav: true,
            navText: ['<i class="fa fa-angle-left"></i>','<i class="fa fa-angle-right"></i>'],
            responsive: {
                0: {
                    items: 1
                },
                400: {
                    items: 1
                },
                768: {
                    items: 1
                },
                1200: {
                    items: 1
                }
            }
        }); 
        /*
        =========================================================================================
        18. VERTICAL SLIDER   
        =========================================================================================
        */ 
        var vertical_slider = $("#vertical-slider");
        vertical_slider.owlCarousel({
            loop: true,
            margin: 0,
            dots: false,
            nav: true,
              animateOut: 'slideOutUp',
              animateIn: 'slideInUp',
            navText: ['<i class="fa fa-angle-left"></i>','<i class="fa fa-angle-right"></i>'],
            responsive: {
                0: {
                    items: 1
                },
                400: {
                    items: 1
                },
                768: {
                    items: 1
                },
                1200: {
                    items: 1
                }
            }
        });
        /*
        =========================================================================================
        19. ABOUT ME SLIDER   
        =========================================================================================
        */ 
        var intro_slider = $("#about-me-slider");
        intro_slider.owlCarousel({
            loop: true,
            margin: 15,
            nav: false,
            responsive: {
                0: {
                    items: 1
                },
                400: {
                    items: 1
                },
                768: {
                    items: 2
                },
                1200: {
                    items: 2
                }
            }
        });               
        /*
        =========================================================================================
       20. COUNTER
        =========================================================================================
        */
        $('.counter').counterUp({
            delay: 10,
            time: 1000
        });
        /*
        =========================================================================================
        21. DATE COUNTDOWN
        =========================================================================================
        */
        var endDate = "July 26, 2016 20:39:00";
        $('.tk-countdown .row').countdown({
            date: endDate,
            render: function(data) {
                $(this.el).html('<div><div class="days"><span>' + this.leadingZeros(data.days, 2) + '</span><span>days</span></div><div class="hours"><span>' + this.leadingZeros(data.hours, 2) + '</span><span>hours</span></div></div><div class="tk-countdown-ms"><div class="minutes"><span>' + this.leadingZeros(data.min, 2) + '</span><span>minutes</span></div><div class="seconds"><span>' + this.leadingZeros(data.sec, 2) + '</span><span>seconds</span></div></div>');
            }
        });

        /*
        =========================================================================================
        22. CONTACT  FORM VALIDATION   
        =========================================================================================
        */

        $("#Name").keyup(function() {
            "use strict";
            var value = $(this).val();
            if (value.length > 1) {
                $(this).parent().find(".error_message").remove();
                $(this).css({
                    "border-bottom": "2px solid rgba #464747"
                })
            } else {
                $(this).parent().find(".error_message").remove();
                $(this).parent().append("<div class='error_message'>Name value should be at least 2</div>");
            }
        });
        $("#Email").keyup(function() {
            "use strict";
            var value = $(this).val();
            var testEmail = /^[A-Z0-9._%+-]+@([A-Z0-9-]+\.)+[A-Z]{2,4}$/i;
            if (testEmail.test(value)) {
                $(this).parent().find(".error_message").remove();
                $(this).css({
                    "border-bottom": "2px solid rgba #464747"
                })
            } else {
                $(this).parent().find(".error_message").remove();
                $(this).parent().append("<div class='error_message'>Please entire a valid email. </div>");
            }
        });
        $("#contact_submit").click(function() {
            "use strict";
            var nameValue = $("#Name").val();
            if (!nameValue.length) {
                $("#Name").css({
                    "border-bottom": "2px solid red"
                });
                $("#Name").parent().find(".error_message").remove();
                $("#Name").parent().append("<div class='error_message'>Name is required</div>");
                return false;
            }
            if (nameValue.length < 1) {
                $("#Name").css({
                    "border-bottom": "2px solid red"
                });
                $("#Name").parent().find(".error_message").remove();
                $("#Name").parent().append("<div class='error_message'>Name value should be at least 2</div>").show();
                return false;
            }
            var emailValue = $("#Email").val();
            var testEmail = /^[A-Z0-9._%+-]+@([A-Z0-9-]+\.)+[A-Z]{2,4}$/i;
            if (!emailValue) {
                $("#Email").css({
                    "border-bottom": "2px solid red"
                });
                $("#Email").parent().find(".error_message").remove();
                $("#Email").parent().append("<div class='error_message'>Email is required</div>").show();
                return false;
            }
            if (!testEmail.test(emailValue)) {
                $("#Email").css({
                    "border-bottom": "2px solid red"
                });
                $("#Email").parent().find(".error_message").remove();
                $("#Email").parent().append("<div class='error_message'>Please entire a valid email.</div>").show();
                return false;
            }
            var subjectValue = $("#Subject").val();
            var phoneValue = $("#Phone").val();
            var messageValue = $("#Message").val();
            if (nameValue && emailValue) {
                $(".feedback_box").slideDown();
                $.ajax({
                    url: 'mail/mail.php',
                    data: {
                        name: nameValue,
                        email: emailValue,
                        phone: phoneValue,
                        subject: subjectValue,
                        message: messageValue
                    },
                    type: 'POST',
                    success: function(result) {
                        "use strict";
                        $(".show_result").append("<div class='result_message'>" + result + "</div>");
                        $(".result_message").slideDown();
                        $("#Name").val("");
                        $("#Email").val("");
                        $("#Phone").val("");
                        $("#Subject").val("");
                        $("#Message").val("");
                    }
                });
            }
            return false;
        });
         

        /*
        =========================================================================================
        23. GALLERY SECTION
        =========================================================================================
        */

        $("#second").bootFolio({
            bfLayout: "bflayhover",
            bfFullWidth: "full-width",
            bfHover: "bfhoverCrafty",
            bfAnimation: "scale",
            bfSpace: "20",
            bfAniDuration: 500,
            bfCaptioncolor: "rgba(0, 0, 0, 0)",
            bfTextcolor: "#ffffff",
            bfTextalign: "center",
            bfNavalign: "center"
        });
        $('.image-link').magnificPopup({type:'image'});  

        /*
        =========================================================================================
        24. BOX SLIDER SECTION
        =========================================================================================
        */
        $('.bxslider').bxSlider({
          mode: 'vertical',
          slideMargin: 0,
          nextText: '<i class="fa fa-angle-right"></i>',
          prevText: '<i class="fa fa-angle-left"></i>'          
        });

        /*
        =========================================================================================
        25. wow js
        =========================================================================================
        */
    
        var wow = new WOW(
          {
            boxClass:     'wow',     
            animateClass: 'animated',
            offset:       0,        
            mobile:       false,     
            live:         true,
            callback:     function(box) {
            },
            scrollContainer: null
          }
        );
        wow.init();


        /*
        =========================================================================================
        26. SHOP SECTION
        =========================================================================================
        */
        $(function() {
            $( "#slider-range" ).slider({
              range: true,
              min: 0,
              max: 300,
              values: [ 50, 200 ],
              slide: function( event, ui ) {
                $( "#amount" ).val( "$" + ui.values[ 0 ] + " - $" + ui.values[ 1 ] );
              }
            });
            $( "#amount" ).val( "$" + $( "#slider-range" ).slider( "values", 0 ) +
              " - $" + $( "#slider-range" ).slider( "values", 1 ) );
        });

        (function ($) {
              $('.spinner .btn:last-of-type').on('click', function() {
                $('.spinner input').val( parseInt($('.spinner input').val(), 10) + 1);
              });
              $('.spinner .btn:first-of-type').on('click', function() {
                $('.spinner input').val( parseInt($('.spinner input').val(), 10) - 1);
              });
        })(jQuery);        
        (function ($) {
              $('.add-to-cart').on('click', function() {
                $('.add-to-cart-content').toggleClass("open-cart");
                return false;
              });
        })(jQuery);              


});