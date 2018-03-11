      var topbar = jQuery('#wpadminbar').size() &gt; 0 ? jQuery('#wpadminbar').height() : 0;
        var sidebar = jQuery('#sidebars');
        var startOffset = sidebar.parent().offset().top;
        var offsetY = parseInt(sidebar.parent().css('padding-top'));
        var offsetX = sidebar.position().left + sidebar.parent().position().left;

        jQuery(window).scroll(
            function() {
                sidebar.stop();

                var start = jQuery(document).scrollTop() + topbar &gt; startOffset;
                var further = sidebar.offset().top + topbar &gt; startOffset;
                var taller = sidebar.outerHeight() &gt; jQuery(window).height();

                if((start || further) &amp;&amp; !taller) {
                    var newpos = (jQuery(document).scrollTop() - startOffset + offsetY);

                    if (jQuery(document).scrollTop() &lt; startOffset) {
                        sidebar.css(
                            {
                                position: 'static',
                                left: 'auto',
                                top: 'auto'
                            }
                        );
                    } else {
                        sidebar.css(
                            {
                                position: 'fixed',
                                left: offsetX,
                                top: offsetY + topbar
                            }
                        );
                    }
                } else {
                    sidebar.css(
                        {
                            position: 'static',
                            left: 'auto',
                            top: 'auto'
                        }
                    );
                }
            }
        );
    }
);