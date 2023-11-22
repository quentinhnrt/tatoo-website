document.addEventListener('DOMContentLoaded', function () {
    const container = document.querySelector('#archive-design-container');
    const firstTemplate = document.querySelector('.archive-design__items__template')
    const trigger = document.querySelector('#infinite-trigger-point');
    if (!container || !firstTemplate || !trigger) return;
    const loader = trigger.querySelector('.loader')
    let hasPosts = true;
    let items = container.querySelectorAll('.archive-design__items__item')

    let observerAnimation = new IntersectionObserver(function (entries, observer) {
        entries.forEach((entry) => {
            if (!entry.isIntersecting) return;
            entry.target.classList.add('visible')
            observer.unobserve(entry.target)
        })
    })


    const stringToHTML = function (str) {
        const parser = new DOMParser();
        return parser.parseFromString(str, 'text/html');
    }

    let totalOffset = parseInt(firstTemplate.dataset.offset);
    const loadMore = function () {
        if (!hasPosts) return;
        let lastTemplate = container.querySelector('.archive-design__items__template:last-child');
        let lastTemplateId = lastTemplate.dataset.template;
        const formdata = new FormData();
        formdata.append('action', 'get_designs');
        formdata.append('lastTemplate', lastTemplateId);
        formdata.append('offset', totalOffset);
        loader.classList.add('visible')
        fetch(ajax.ajaxurl, {
            method: 'POST',
            body: formdata
        }).then(function (response) {
            return response.text();
        }).then(function (data) {
            loader.classList.remove('visible')
            if (data === "no more posts") {
                hasPosts = false;
                return;
            }
            data = stringToHTML(data);
            data = data.querySelector('.archive-design__items__template');
            totalOffset += parseInt(data.dataset.offset);
            container.insertAdjacentHTML('beforeend', data.outerHTML);
            updateItems()
        });
    }

    function updateItems() {
        items = container.querySelectorAll('.archive-design__items__item');
        updateObserver(items)
    }

    function updateObserver(items) {
        items.forEach(function (item) {
            observerAnimation.observe(item);
        })
    }

    let observerLoadMore = new IntersectionObserver(function (entries, observer) {
        entries.forEach((entry) => {
            loadMore()
        })
    })

    observerLoadMore.observe(trigger)


})