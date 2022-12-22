function resizeByWidth( nsW, nsH ) {
  let targetImg = document.getElementsByClassName('mytask');
  console.log(targetImg[0].width = 300);
  for(let i = 0; i < targetImg.length; i++) {
    targetImg[i].width = nsW;
    targetImg[i].height = nsH;
  }
}