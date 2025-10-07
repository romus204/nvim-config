return {
    cmd = { "gopls" },
    filetypes = { "go", "gomod", "gowork", "gotmpl" },
    settings = {
        gopls = {
            -- Включаем расширенные проверки через staticcheck (очень важно!)
            staticcheck = true,

            -- Более строгие анализаторы
            analyses = {
                -- Предупреждения об неиспользуемых параметрах
                unusedparams = true,
                -- Анализ затенения переменных (shadowing)
                shadow = true,
                -- Неиспользуемые переменные/функции
                unusedwrite = true,
                -- Невозможные тип-ассерты
                unreachable = true,
                -- Проверка ошибок: игнорирование error
                nilerr = true,
                -- Анализ мьютексов: copylocks
                copylocks = true,
                -- Проверка race condition'ов (экспериментально)
                atomic = true,
                -- Анализ длины цикла (например, for { ... })
                loopclosure = true,
                -- Проверка строковых форматов (fmt)
                printf = true,
                -- Анализ defer'ов
                defervalue = true,
            },

            -- Удобные фичи
            usePlaceholders = true,
            completeUnimported = true,
            matcher = "fuzzy",
            symbolMatcher = "fuzzy",

            -- Экспериментальные возможности (по желанию)
            experimentalPostfixCompletions = true,

            -- Дополнительно: включить семантическое выделение (цвета по смыслу)
            -- semanticTokens = true,

            -- Можно добавить, если хочешь видеть больше подсказок
            hints = {
                assignVariableTypes = true,
                compositeLiteralFields = true,
                compositeLiteralValues = true,
                constantValues = true,
                functionTypeParameters = true,
                parameterNames = true,
                rangeVariableTypes = true,
            },
        },
    },
}
