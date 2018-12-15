module Jekyll
    module FuriganaFilter
        def furigana(input)
            input.gsub(/\$(.+?)\((.+?)\)/, '<ruby>\1<rt>\2</rt></ruby>')
        end
        def kanji_only(input)
            input.gsub(/\$(.+?)\((.+?)\)/, '\1')
        end
        def kana_only(input)
            input.gsub(/\$(.+?)\((.+?)\)/, '\2')
        end
    end
end

Liquid::Template.register_filter(Jekyll::FuriganaFilter)
