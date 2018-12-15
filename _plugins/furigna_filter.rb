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
        def emphasize_ja(input)
            input.gsub(/\[\[(.+?)\]\]/, '<span class="ryu-text">\1</span>')
        end
        def post_content(input)
            input = furigana(emphasize_ja(input))
        end
    end
end

Liquid::Template.register_filter(Jekyll::FuriganaFilter)
