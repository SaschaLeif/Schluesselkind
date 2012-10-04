window.addEvent('domready', function() {
	// Second Example
	// The same as before: adding events
	$('dropdown_menu').addEvents({
		'mouseenter' : function() {
			// Always sets the duration of the tween to 1000 ms and a bouncing transition
			// And then tweens the height of the element
			this.set('tween', {
				duration : 1000,
				transition : Fx.Transitions.Bounce.easeOut // This could have been also 'bounce:out'
			}).tween('height', '150px');
		},
		'mouseleave' : function() {
			// Resets the tween and changes the element back to its original size
			this.set('tween', {}).tween('height', '15px');
		}
	});
}); 