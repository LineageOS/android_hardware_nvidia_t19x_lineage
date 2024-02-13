DTC_FLAGS += -@

old-dtb := $(dtb-y)
old-dtbo := $(dtbo-y)
dtb-y :=
dtbo-y :=
makefile-path := t19x/lineage

dtb-y += tegra194-p2888-0001-p2822-0000.dtb
dtb-y += tegra194-p3668-0000-p3509-0000-android.dtb
dtb-y += tegra194-p3668-0001-p3509-0000-android.dtb

ifneq ($(dtb-y),)
dtb-y := $(addprefix $(makefile-path)/,$(dtb-y))
endif
ifneq ($(dtbo-y),)
dtbo-y := $(addprefix $(makefile-path)/,$(dtbo-y))
endif

dtb-y += $(old-dtb)
dtbo-y += $(old-dtbo)
