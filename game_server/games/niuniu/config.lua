
-- 牛牛的游戏配置 房间配置 机器人配置
return {
    [6000] = {
        -- 游戏种类
        kindid = 2,

        -- 俱乐部id
        clubid = 1,

        -- 房间名字
        room_name = "经典牛牛",

        -- 游戏开始模式 0:所有人准备 1:满人开始 2:时间控制
        game_start_mode = 0,

        -- 房间类型 0 金币场 1 私人场
        type = 0,

        -- 房间排序
        sortid = 0,

        -- 房间预创建桌子数
        precreate_table_count = 10,

        -- 房间最大桌子数目
        max_table_count = 60,

        -- 房间最大椅子数
        max_chair_count = 10,

        -- 房间最大人数
        max_player = 300,

        -- 税收比例
        revenue = 0.06,

        -- 房间最小进入分数
        min_enter_score = 0,

        -- 允许游戏中加入
        allow_join_playing = true,

        -- 允许机器人
        allow_robot = false,

        -- 允许旁观
        allow_ob = true,

        -- 获取玩法
        wanfa = function(self, subroomid, subroom_wanfaid)
            return (self.subrooms[subroomid].wanfa[subroom_wanfaid].item[3] & 0x04) ~= 0 and "王癞牛牛" or "经典牛牛" end,

        -- 子房间配置
        -- 房间等级 对应 初级场 1 中级场 2 高级场 3 土豪场 4 至尊场 5 皇家场 6
        subrooms = {
            [1] = {
                subroomid = 1,
                open = true,    -- 是否开放
                name = "初级场",    -- 名字
                base_score = 2, -- 底分
                min_enter_score = 500,  -- 准入分数
                max_chair_count = 10,   -- 最大椅子数
                -- 桌子玩法
                -- 翻倍规则 (牛七2倍 牛八3倍 牛九4倍 牛牛5倍)=0 (牛七2倍 牛八2倍 牛九2倍 牛牛3倍)=1 (牛牛1-牛牛依次1-10倍)=2
                -- 特殊牌型 顺子牛0x01 银牛0x02 同花牛0x04 金牛0x08 葫芦牛0x10 五小牛0x20 炸弹牛0x40 一条龙0x80 同花顺0x100  做 或 运算
                -- 特殊规则 可咪牌0x01 下注翻倍0x02 王赖0x04   做 或 运算
                wanfa = {
                    {
                        item = { 0, 511, 3 },
                    },
                    {
                        item = { 0, 511, 7 },
                    },
                },
            },
            [2] = {
                subroomid = 2,
                open = true,    -- 是否开放
                name = "中级场",    -- 名字
                base_score = 20, -- 底分
                min_enter_score = 5000,  -- 准入分数
                max_chair_count = 10,   -- 最大椅子数
                -- 桌子玩法
                -- 翻倍规则 (牛七2倍 牛八3倍 牛九4倍 牛牛5倍)=0 (牛七2倍 牛八2倍 牛九2倍 牛牛3倍)=1 (牛牛1-牛牛依次1-10倍)=1
                -- 特殊牌型 顺子牛0x01 银牛0x02 同花牛0x04 金牛0x08 葫芦牛0x10 五小牛0x20 炸弹牛0x40 一条龙0x80 同花顺0x100  做 或 运算
                -- 特殊规则 可咪牌0x01 下注翻倍0x02 王赖0x04   做 或 运算
                wanfa = {
                    {
                        item = { 0, 511, 3 },
                    },
                    {
                        item = { 0, 511, 7 },
                    },
                },
            },
            [3] = {
                subroomid = 3,
                open = true,    -- 是否开放
                name = "高级场",    -- 名字
                base_score = 50, -- 底分
                min_enter_score = 10000,  -- 准入分数
                max_chair_count = 10,   -- 最大椅子数
                -- 桌子玩法
                -- 翻倍规则 (牛七2倍 牛八3倍 牛九4倍 牛牛5倍)=0 (牛七2倍 牛八2倍 牛九2倍 牛牛3倍)=1 (牛牛1-牛牛依次1-10倍)=1
                -- 特殊牌型 顺子牛0x01 银牛0x02 同花牛0x04 金牛0x08 葫芦牛0x10 五小牛0x20 炸弹牛0x40 一条龙0x80 同花顺0x100  做 或 运算
                -- 特殊规则 可咪牌0x01 下注翻倍0x02 王赖0x04   做 或 运算
                wanfa = {
                    {
                        item = { 0, 511, 3 },
                    },
                    {
                        item = { 0, 511, 7 },
                    },
                },
            },
            [4] = {
                subroomid = 4,
                open = true,    -- 是否开放
                name = "土豪场",    -- 名字
                base_score = 100, -- 底分
                min_enter_score = 20000,  -- 准入分数
                max_chair_count = 10,   -- 最大椅子数
                -- 桌子规则
                -- 翻倍规则 (牛七2倍 牛八3倍 牛九4倍 牛牛5倍)=0 (牛七2倍 牛八2倍 牛九2倍 牛牛3倍)=1 (牛牛1-牛牛依次1-10倍)=1
                -- 特殊牌型 顺子牛0x01 银牛0x02 同花牛0x04 金牛0x08 葫芦牛0x10 五小牛0x20 炸弹牛0x40 一条龙0x80 同花顺0x100  做 或 运算
                -- 特殊规则 可咪牌0x01 下注翻倍0x02 王赖0x04   做 或 运算
                wanfa = {
                    {
                        item = { 0, 511, 3 },
                    },
                    {
                        item = { 0, 511, 7 },
                    },
                },
            },
            [5] = {
                subroomid = 5,
                open = true,    -- 是否开放
                name = "至尊场",    -- 名字
                base_score = 200, -- 底分
                min_enter_score = 50000,  -- 准入分数
                max_chair_count = 10,   -- 最大椅子数
                -- 桌子规则
                -- 翻倍规则 (牛七2倍 牛八3倍 牛九4倍 牛牛5倍)=0 (牛七2倍 牛八2倍 牛九2倍 牛牛3倍)=1 (牛牛1-牛牛依次1-10倍)=1
                -- 特殊牌型 顺子牛0x01 银牛0x02 同花牛0x04 金牛0x08 葫芦牛0x10 五小牛0x20 炸弹牛0x40 一条龙0x80 同花顺0x100  做 或 运算
                -- 特殊规则 可咪牌0x01 下注翻倍0x02 王赖0x04   做 或 运算
                wanfa = {
                    {
                        item = { 0, 511, 3 },
                    },
                    {
                        item = { 0, 511, 7 },
                    },
                },
            },
            [6] = {
                subroomid = 6,
                open = true,    -- 是否开放
                name = "皇家场",    -- 名字
                base_score = 500, -- 底分
                min_enter_score = 200000,  -- 准入分数
                max_chair_count = 10,   -- 最大椅子数
                -- 桌子规则
                -- 翻倍规则 (牛七2倍 牛八3倍 牛九4倍 牛牛5倍)=0 (牛七2倍 牛八2倍 牛九2倍 牛牛3倍)=1 (牛牛1-牛牛依次1-10倍)=1
                -- 特殊牌型 顺子牛0x01 银牛0x02 同花牛0x04 金牛0x08 葫芦牛0x10 五小牛0x20 炸弹牛0x40 一条龙0x80 同花顺0x100  做 或 运算
                -- 特殊规则 可咪牌0x01 下注翻倍0x02 王赖0x04   做 或 运算
                wanfa = {
                    {
                        item = { 0, 511, 3 },
                    },
                    {
                        item = { 0, 511, 7 },
                    },
                },
            },
        },
    }
}