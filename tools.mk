.PHONY: variables
variables:
	@$(foreach \
		v, \
		$(sort $(.VARIABLES)), \
		$(if \
			$(filter-out \
				environment% default automatic, \
				$(origin $v)), \
			$(info $v = $($v) ($(value $v)))))
	@true

.PHONY: variable-%
variable-%:
	$(info $* = $($*) ($(value $*)))
	@true
