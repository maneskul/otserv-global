function onUse(player, item, fromPosition, target, toPosition, isHotkey)
    local count = 0
    if item.itemid == 5785 then
        count = 7
    else if item.itemid == 9653 then
        count = 15
    end
    
    player:addVipDays(count)
    player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, "Added ".. count .." day(s) of VIP account.")
    fromPosition:sendMagicEffect(CONST_ME_MAGIC_RED)

    return true
end