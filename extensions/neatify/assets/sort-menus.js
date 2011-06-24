jQuery(document).ready(function() {
	jQuery('#nav > li > ul').each(function() {
		var list = jQuery(this);
		var items = list.find('li').remove().get();
		
		items.sort(function(a, b) { 
			a = jQuery(a).text().toUpperCase();
			b = jQuery(b).text().toUpperCase();
			
			if (a < b) return -1;
			if (a > b) return 1;
			
			return 0;
		});
		
		list.append(items);
	});
});