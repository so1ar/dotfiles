function dog_shit(str)
    return {"🐶💩", "狗屎", "Tencent"}
end

function tencent(str)
    return {"腾讯", "🐶💩"}
end

function shitty_wechat(str)
    return {"张小🐉没🐎", "张小龙没马", "大且丑"}
end

function o_kay(str)
    return "彳亍口巴"
end

function okay(str)
    return "彳亍"
end

function chicken(str)
    return "只因"
end

function just_because(str)
    return "鸡"
end

ime.register_trigger("dog_shit", "🐶💩腾讯", {}, {"腾讯"})
ime.register_trigger("tencent", "狗屎", {}, {"狗屎"})
ime.register_trigger("shitty_wechat", "微信", {}, {"微信"})
ime.register_trigger("shitty_wechat", "张小龙", {}, {"张小龙"})
ime.register_trigger("o_kay", "行吧", {}, {"行吧"})
ime.register_trigger("okay", "行", {}, {"行"})
ime.register_trigger("chicken", "鸡你太美", {"ji"}, {"鸡"})
ime.register_trigger("just_because", "鸡你太美", {}, {"只因"})
