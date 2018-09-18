const tip = tippy('.code-snippet', {
  trigger: 'manual',
  hideOnClick: false,
  arrow: true,
  distance: 10,
  placement: 'top'
});

const clipboard = new ClipboardJS('.code-snippet', {
  text: trigger => {
    trigger._tippy.show();
    setTimeout(() => trigger._tippy.hide(), 800);
    return trigger.innerHTML.trim();
  }
});