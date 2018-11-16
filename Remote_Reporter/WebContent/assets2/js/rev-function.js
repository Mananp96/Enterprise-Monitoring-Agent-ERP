jQuery(document).ready(function() {  

   jQuery("#slider1").revolution({
      sliderType:"standard",
      sliderLayout:"auto",
      delay:9000,
      gridwidth:1530,
      mouseScrollNavigation:"off",
      dottedOverlay:"twoxtwo",
      onHoverStop:"off",
      gridheight:800,
      navigation: {

            touch:{
                 touchenabled:"off",
                 swipe_treshold : 75,
                 swipe_min_touches : 1,
                 drag_block_vertical:false,
                 swipe_direction:"horizontal"
                },
            arrows: {
                 style:"hebe",
                 enable:true,
                 rtl:false,
                 hide_onmobile:true,
                 hide_onleave:false,
                 hide_delay:200,
                 hide_delay_mobile:1200,
                 hide_under:500,
                 hide_over:9999,
                  tmp: '<div class="tp-title-wrap"><span class="tp-arr-titleholder">{{title}}</span>',
                 left : {
                        container:"slider",
                        h_align:"left",
                        v_align:"center",
                        h_offset:0,
                        v_offset:0,
                 },
                 right : {
                        container:"slider",
                        h_align:"right",
                        v_align:"center",
                        h_offset:0,
                        v_offset:0
                 }
              },                            
            bullets:{
                 style:"",
                 enable:true,
                 container:"slider",
                 rtl:false,
                 hide_onmobile:false,
                 hide_onleave:false,
                 hide_delay:200,
                 hide_delay_mobile:1200,
                 hide_under:500,
                 hide_over:9999,
                 tmp:"", 
                 direction:"horizontal",
                 space:8,       
                 h_align:"center",
                 v_align:"bottom",
                 h_offset:0,
                 v_offset:20
            },           

       },
            gridheight:[830,670,860,800],            
            shadow:0,
            spinner:"off",
            stopLoop:"off",
            stopAfterLoops:-1,
            stopAtSlide:-1,
            shuffle:"off",
            autoHeight:"off",
            hideThumbsOnMobile:"off",
            hideSliderAtLimit:0,
            hideCaptionAtLimit:0,
            hideAllCaptionAtLilmit:0,
            disableProgressBar: "on",
            debugMode:false,
                fallbacks: {
                simplifyAll:"off",
                nextSlideOnWindowFocus:"off",
                disableFocusListener:false,
            }                                 

    });


   var setREVStartSize = function() {
       try {
           var e = new Object,
               i = jQuery(window).width(),
               t = 9999,
               r = 0,
               n = 0,
               l = 0,
               f = 0,
               s = 0,
               h = 0;
           e.c = jQuery('#rev_slider_9_2');
           e.gridwidth = [1600];
           e.gridheight = [660];
           e.sliderLayout = "fullwidth";
           if (e.responsiveLevels && (jQuery.each(e.responsiveLevels, function(e, f) {
                   f > i && (t = r = f, l = e), i > f && f > r && (r = f, n = e)
               }), t > r && (l = n)), f = e.gridheight[l] || e.gridheight[0] || e.gridheight, s = e.gridwidth[l] || e.gridwidth[0] || e.gridwidth, h = i / s, h = h > 1 ? 1 : h, f = Math.round(h * f), "fullscreen" == e.sliderLayout) {
               var u = (e.c.width(), jQuery(window).height());
               if (void 0 != e.fullScreenOffsetContainer) {
                   var c = e.fullScreenOffsetContainer.split(",");
                   if (c) jQuery.each(c, function(e, i) {
                       u = jQuery(i).length > 0 ? u - jQuery(i).outerHeight(!0) : u
                   }), e.fullScreenOffset.split("%").length > 1 && void 0 != e.fullScreenOffset && e.fullScreenOffset.length > 0 ? u -= jQuery(window).height() * parseInt(e.fullScreenOffset, 0) / 100 : void 0 != e.fullScreenOffset && e.fullScreenOffset.length > 0 && (u -= parseInt(e.fullScreenOffset, 0))
               }
               f = u
           } else void 0 != e.minHeight && f < e.minHeight && (f = e.minHeight);
           e.c.closest(".rev_slider_wrapper").css({
               height: f
           })
       } catch (d) {
           console.log("Failure at Presize of Slider:" + d)
       }
   };
   setREVStartSize();
   var tpj = jQuery;
   var revapi9;
   tpj(document).ready(function() {
       if (tpj("#rev_slider_9_2").revolution == undefined) {
           revslider_showDoubleJqueryError("#rev_slider_9_2");
       } else {
           revapi9 = tpj("#rev_slider_9_2").show().revolution({
               sliderType: "hero",
               jsFileLocation: "//revolution/js/",
               sliderLayout: "fullwidth",
               dottedOverlay: "none",
               delay: 9000,
               navigation: {},
               viewPort: {
                   enable: true,
                   outof: "wait",
                   visible_area: "80%"
               },
               visibilityLevels: [1240, 1024, 778, 480],
               gridwidth: 1600,
               gridheight: 660,
               lazyType: "none",
               shadow: 0,
               spinner: "spinner0",
               autoHeight: "off",
               disableProgressBar: "on",
               hideThumbsOnMobile: "off",
               hideSliderAtLimit: 0,
               hideCaptionAtLimit: 0,
               hideAllCaptionAtLilmit: 0,
               debugMode: false,
               fallbacks: {
                   simplifyAll: "off",
                   disableFocusListener: false,
               }
           });
       }
   });



    var setREVStartSize = function() {
        try {
            var e = new Object,
                i = jQuery(window).width(),
                t = 9999,
                r = 0,
                n = 0,
                l = 0,
                f = 0,
                s = 0,
                h = 0;
            e.c = jQuery('#rev_slider_11_3');
            e.gridwidth = [1600];
            e.gridheight = [660];
            e.sliderLayout = "fullwidth";
            if (e.responsiveLevels && (jQuery.each(e.responsiveLevels, function(e, f) {
                        f > i && (t = r = f, l = e), i > f && f > r && (r = f, n = e)
                    }),
                    t > r && (l = n)), f = e.gridheight[l] || e.gridheight[0] || e.gridheight, s = e.gridwidth[l] || e.gridwidth[0] || e.gridwidth, h = i / s, h = h > 1 ? 1 : h, f = Math.round(h * f), "fullscreen" == e.sliderLayout) {
                var u = (e.c.width(), jQuery(window).height());
                if (void 0 != e.fullScreenOffsetContainer) {
                    var c = e.fullScreenOffsetContainer.split(",");
                    if (c) jQuery.each(c, function(e, i) {
                        u = jQuery(i).length > 0 ? u - jQuery(i).outerHeight(!0) : u
                    }), e.fullScreenOffset.split("%").length > 1 && void 0 != e.fullScreenOffset && e.fullScreenOffset.length > 0 ? u -= jQuery(window).height() * parseInt(e.fullScreenOffset, 0) / 100 : void 0 != e.fullScreenOffset && e.fullScreenOffset.length > 0 && (u -= parseInt(e.fullScreenOffset, 0))
                }
                f = u
            } else void 0 != e.minHeight && f < e.minHeight && (f = e.minHeight);
            e.c.closest(".rev_slider_wrapper").css({
                height: f
            })
        } catch (d) {
            console.log("Failure at Presize of Slider:" + d)
        }
    };
    setREVStartSize();
    var tpj = jQuery;
    var revapi11;
    tpj(document).ready(function() {
        if (tpj("#rev_slider_11_3").revolution == undefined) {
            revslider_showDoubleJqueryError("#rev_slider_11_3");
        } else {
            revapi11 = tpj("#rev_slider_11_3").show().revolution({
                sliderType: "hero",
                jsFileLocation: "//tn.joomexp.com/wordpress/wordpress-metrics/wp-content/plugins/revslider/public/assets/js/",
                sliderLayout: "fullwidth",
                dottedOverlay: "none",
                delay: 9000,
                navigation: {},
                viewPort: {
                    enable: true,
                    outof: "wait",
                    visible_area: "80%"
                },
                visibilityLevels: [1240, 1024, 778, 480],
                gridwidth: 1600,
                gridheight: 660,
                lazyType: "none",
                shadow: 0,
                spinner: "spinner0",
                autoHeight: "off",
                disableProgressBar: "on",
                hideThumbsOnMobile: "off",
                hideSliderAtLimit: 0,
                hideCaptionAtLimit: 0,
                hideAllCaptionAtLilmit: 0,
                debugMode: false,
                fallbacks: {
                    simplifyAll: "off",
                    disableFocusListener: false,
                }
            });
        }
    });


});

