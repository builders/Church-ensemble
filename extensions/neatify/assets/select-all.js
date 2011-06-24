jQuery(document).ready(function() {
	jQuery('table.selectable').each(function() {
		var table = jQuery(this);
		var header = table.prev('h2');
		var button = jQuery('<a class="select-all button" href="#">Select All</a>');
		var cells = table.find('tbody > tr > td:first-child');
		
		button.appendTo(header);
		button.click(function() {
			cells.click(); return false;
		});
	});
});