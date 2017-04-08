module FlashesHelper
FlASH_CLASSES = { alert: "danger", notice: "Success", warning: "warning"}.freeze

    def flash_class(key)
        FLASH_CLASSES.fetch key.to_sym, key
    end

    def uder_facing_flashes
        flash.to_hash.slice "alert", "notice", "warning"
    end
 end
