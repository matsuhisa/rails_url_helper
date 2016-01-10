["松屋", "吉野家", "なか卯", "丸亀製麺", "はなまる", "楽釜製麺所"].each_with_index do |shop, index|
  Shop.create(name: shop, id: index+1)
end

[
{ title: "美味しかったです！", body: "カレーが美味しかった", shop_id: 1 },
{ title: "今や駅うどんの雰囲気です。", body: "とある平日の午後、諸用があって東京駅の北口方面に行ったのですが、ちょいとお腹も減ってしまい簡単に食事できるところを探します。", shop_id: 2, state: 2 },
{ title: "サンキューセール実施中！", body: "390円で親子丼を食べて来ました。なうｗ", shop_id: 2, state: 1, },
{ title: "翌日は大変だった", body: "単に安いと言うだけでなく、お手軽さ、早さで、忙しいサラリーマンに人気だ。
特に私は忙しいってわけじゃないが┐(´∇｀)┌", shop_id: 2, state: 1 },
{ title: "なか卯のうどん", body: "しゃべる自動券売機でチケットを購入してカウンターに腰掛けた", shop_id: 2, state: 2 },
{ title: "やっぱりコシがあってウマい", body: "平日ランチ時はすごい行列です(((((゜゜;)が、注文口に並んでるだけなので、店内はすぐ座れます", shop_id: 3, state: 1 },
{ title: "行列ランチ＠丸亀製麺", body: "その原因は、セルフ方式かと思われます。一人一人の注文を聞いてから、うどんをサーブし、その後天ぷらやおにぎりなどを好みで皿にのせて、会計", shop_id: 4, state: 1 },
{ title: "品川：うどん、お手軽に讃岐うどんを楽しめるぞ！　増殖中の「丸亀製麺」より", body: "ココは品川、北品川駅近くにある「丸亀製麺」さん。至る所にあるんですねぇ。どんだけ増殖してるんだろ？？ふと、調べてみたくなった今日この頃。東京都に６０店舗以上　Σ(･ω･ﾉ)ﾉ！ﾅﾝﾄ", shop_id: 5, state: 1 },
{ title: "いくらなんでもヤバすぎる！", body: "どこを起点に考えるかにもよりますが、品川駅を起点に考えると、品川グランドコモンズのスカイウエイを延々と歩いた最果ての地にあります", shop_id: 5, state: 1 },
].each_with_index do |review, index|
  Review.create(title: review[:title], body: review[:body], shop_id: review[:shop_id], state: review[:state])
end

[
 { title: "牛丼", shop_id: 2, state: 1 },
 { title: "たぬきうどん", shop_id: 3, state: 1 },
 { title: "カモネギうどん", shop_id: 3, state: 2 },
 { title: "讃岐うどん", shop_id: 4, state: 1 },
 { title: "あげ玉きうどん", shop_id: 4, state: 1 },
 { title: "月見うどん", shop_id: 5, state: 2 },
].each_with_index do |photo, index|
  Photo.create(title: photo[:title], shop_id: photo[:shop_id], state: photo[:state])
end

[
 { title: "牛丼", shop_id: 2, state: 1 },
 { title: "親子丼", shop_id: 3, state: 1 },
 { title: "ネギトロ丼", shop_id: 3, state: 2 },
].each_with_index do |offcial, index|
  OfficialPhoto.create(title: offcial[:title], shop_id: offcial[:shop_id], state: offcial[:state])
end

[
 { how_to: "駅から5分", shop_id: 2 },
 { how_to: "自転車で10分", shop_id: 3 },
].each_with_index do |access, index|
  Access.create(how_to: access[:how_to], shop_id: access[:shop_id])
end
