var preloader = {
    load: () => {
        $('body').append('<div class="preloader" id="preloaders" ></div>');
    },
    remove: () => {
        $('#preloaders').remove();
    }
}   