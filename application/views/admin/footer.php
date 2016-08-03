<!-- Footer -->
<footer class="main">
	&copy; <?php echo date('Y'); ?> <strong>Website Backend Managemet System</strong>. 
    Developed by 
	<a href="http://camcyber.com" 
    	target="_blank">CamCyber</a>
</footer>
<script>
function init() {
var imgDefer = document.getElementsByTagName('img');
for (var i=0; i<imgDefer.length; i++) {
if(imgDefer[i].getAttribute('data-src')) {
imgDefer[i].setAttribute('src',imgDefer[i].getAttribute('data-src'));
} } }
window.onload = init;
</script>
