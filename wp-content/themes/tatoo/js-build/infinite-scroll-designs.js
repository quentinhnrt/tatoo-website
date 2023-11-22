"use strict";

document.addEventListener('DOMContentLoaded', function () {
  var container = document.querySelector('#archive-design-container');
  var firstTemplate = document.querySelector('.archive-design__items__template');
  var trigger = document.querySelector('#infinite-trigger-point');
  var loader = trigger.querySelector('.loader');
  var hasPosts = true;
  var items = container.querySelectorAll('.archive-design__items__item');
  var observerAnimation = new IntersectionObserver(function (entries, observer) {
    entries.forEach(function (entry) {
      if (!entry.isIntersecting) return;
      entry.target.classList.add('visible');
      observer.unobserve(entry.target);
    });
  });
  var stringToHTML = function stringToHTML(str) {
    var parser = new DOMParser();
    return parser.parseFromString(str, 'text/html');
  };
  var totalOffset = parseInt(firstTemplate.dataset.offset);
  var loadMore = function loadMore() {
    if (!hasPosts) return;
    var lastTemplate = container.querySelector('.archive-design__items__template:last-child');
    var lastTemplateId = lastTemplate.dataset.template;
    var formdata = new FormData();
    formdata.append('action', 'get_designs');
    formdata.append('lastTemplate', lastTemplateId);
    formdata.append('offset', totalOffset);
    loader.classList.add('visible');
    fetch(ajax.ajaxurl, {
      method: 'POST',
      body: formdata
    }).then(function (response) {
      return response.text();
    }).then(function (data) {
      loader.classList.remove('visible');
      if (data === "no more posts") {
        hasPosts = false;
        return;
      }
      data = stringToHTML(data);
      data = data.querySelector('.archive-design__items__template');
      totalOffset += parseInt(data.dataset.offset);
      container.insertAdjacentHTML('beforeend', data.outerHTML);
      updateItems();
    });
  };
  function updateItems() {
    items = container.querySelectorAll('.archive-design__items__item');
    updateObserver(items);
  }
  function updateObserver(items) {
    items.forEach(function (item) {
      observerAnimation.observe(item);
    });
  }
  var observerLoadMore = new IntersectionObserver(function (entries, observer) {
    entries.forEach(function (entry) {
      loadMore();
    });
  });
  observerLoadMore.observe(trigger);
  function calculateRowHeight() {
    var grids = document.querySelectorAll('.archive-design__items__template');
    grids.forEach(function (grid) {
      // get 1fr width
      var gridWidth = grid.offsetWidth;
      var gridGap = parseInt(window.getComputedStyle(grid).gridRowGap);
      var gridRowHeight = gridWidth + gridGap;
      grid.style.setProperty('--grid-row-height', gridRowHeight + 'px');
    });
  }
});