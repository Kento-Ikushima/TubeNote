function copyToClipboard(){
  var info = [document.getElementById('task_url').value,
            document.getElementById("task_description").value];

  navigator.clipboard.writeText(info).then(
  () => {
    alert('メモとURLをコピーしました。');
  },
  () => {
    alert('コピーに失敗しました。');
  });
}
