# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Initialize Admin User
if User.find_by(email: "admin@test.com").nil?
  u = User.new
  u.email = "admin@test.com"           # 可以改成自己的 email
  u.password = "123456"                # 最少要六码
  u.password_confirmation = "123456"   # 最少要六码
  u.is_admin = true
  u.save
  puts "Admin 已经建立好了，帐号为#{u.email}, 密码为#{u.password}"
else
  puts "Admin 已经建立过了，脚本跳过该步骤。"
end

# Initialize Product
Product.create!(name: "HAY- J104单椅",
  description: "JørgenBækmark为FDB设计的J104椅子也是在1940年代所发行，简约的设计中结合实用的机能性，值得一题的是HAY为了重新上市这一系列椅子，特别买下了当时生产同一系列椅款的机器来制造，保留原汁原味的丹麦经典。
  尺寸：宽57 x深47 x高73 /高高44.5厘米",
  price: 2020,
  stock: 5,
  image: open("http://files.hay.dk/resources/thumb.php?id=914609&size=2000x2000&w=832df6ca838a2183232865c5a64a1caf")
  category: "椅子",
  )

Product.create!(name: "HAY- Slit圆型几何边几",
  description: "狭缝几何边几系列是由折纸的概念而设计，将金属融合几何元素与工艺技法，舍弃浮夸的造型设计，在细节中表现折纸的概念，散发着简约且不失个性的现代美感。
  尺寸：直径45 x高35.5厘米",
  price: 1795,
  stock: 5,
  image: open("http://files.hay.dk/resources/thumb.php?id=3507668&size=2000x2000&w=799f1d7d5bb163bcec91e9bc2d845228")
  category: "桌子",
  )

Product.create!(name: "HAY- Revolver旋转吧台椅",
  description: "Revolver吧台椅来自丹麦HAY旗下最新的设计师系列WRONG FOR HAY，设计师Leon Ransmeier在结构中的设计巧思让椅面可以360度转，稳固的烤漆金属椅架减低了旋转中的安全疑虑，无论是居家或商用空间都十分适用。
  高型：直径34×高76厘米",
  price: 2020,
  stock: 5,
  image: open("http://files.hay.dk/resources/thumb.php?id=3773489&size=2000x2000&w=ddb25e682b813b38a59ac3843f8ebc94")
  category: "椅凳",
  )

Product.create!(name: "HAY- Can双人沙发",
  description: "CAN沙发系列是知名法国设计师兄弟档Ronan＆Erwan Bouroullec继哥本哈根系列后再次合作的新设计，设计概念是将原来繁复的沙发结构解构后再重新组成，化繁为简之中，更加强调沙发 应有的舒适度与简约实用的北欧设计美学，此外，因应时下都市游牧民族的小家庭所需，CAN新型态的结构设计可完全拆解为椅架布套与坐垫三部分，更加方便携带，搬家时再也不必为笨重的沙发所困扰。
  尺寸：宽173 x深90 x高82 /座高40厘米",
  price: 16895,
  stock: 5,
  image: open("http://files.hay.dk/resources/thumb.php?id=3440749&size=2000x2000&w=d0b6e36cd23265d262872ab3a6a006cd")
  category: "沙发",
  )

Product.create!(name: "GUBI- Beetle休闲椅",
  description: "丹麦品牌Gubi于2013年发表的甲壳虫单椅与吧台椅，设计师是来自丹麦与义大利的建筑师组合GamFratesi，灵感源自细微观察下甲虫优美而浑然天成的线条，椅座与椅背结构 是两片曲木胶合板组合而成，代表坚硬的甲壳外型，外覆的软垫则增加了乘坐时的舒适度，圆管脚架由上而下细腻的线条变化，赋予Beetle低调而雅致的设计感。
  尺寸：宽72 x深63 x高82 /座高36厘米",
  price: 13450,
  stock: 5,
  image: open("https://gubi.filecamp.com/0/gubi/thumb/4cln-2mf1l84t-800x800.jpg")
  category: "椅子",
  )

Product.create!(name: "GUBI- MG Kangourou 咖啡桌",
  description: "MG Kangourou咖啡桌是结合两个大小高度各异的桌面组合，以Matégot精专的网眼金属材料制作，轻巧有机的外型搭配不同颜色，洗链的层次效果兼具功能考量，是Matégot的 经典设计作品，也是VITRA设计博物馆的永久馆藏。
  小桌：直径18 x高40厘米
  大桌：40 x 48 x高39厘米",
  price: 4450,
  stock: 5,
  image: open("https://gubi.filecamp.com/0/gubi/thumb/29ai-fm2glhci-800x800.jpg")
  category: "桌子",
  )

Product.create!(name: "GUBI- MG Nagasaki 吧台椅",
  description: "MG Nagasaki是Matégot最具代表性的设计，网眼金属板料搭配钢管材质，外型与色彩融合装饰艺术风格的元素，是现代家具史上的经典作品。
  尺寸：34 x 39 x高74厘米/坐高72厘米",
  price: 4125,
  stock: 5,
  image: open("https://gubi.filecamp.com/0/gubi/thumb/29e9-8bka5jgf-800x800.jpg")
  category: "椅凳",
  )

Product.create!(name: "MENU- Afteroom午后椅",
  description: "这是一把视觉上十分耐看的轻巧椅子，近瞧一下这张椅子的结构，会发现完美的细节质感。圆形弧度的椅背让休憩时支撑腰部的舒适感提升，搭配细致又坚固的三柱金属椅脚，是一把可接受设计师挑剔的好椅子。简约的北欧风格无论是作为咖啡厅，餐厅的餐椅皆相当合适。
  尺寸：宽43 x深54 x高77 /坐高46厘米",
  price: 4250,
  stock: 5,
  image: open("https://menu.kontainer.com/resources/thumb.php?id=3867095&size=2000x2000&w=59a213f57625f6de8a62a23426f33f25")
  category: "椅子",
  )

Product.create!(name: "MENU- Fuwl Cage边几",
  description: "Fuwl Cage边几以内敛优雅的北约设计风格中，以各种天然木材料融入新颖的设计概念，期待为现今的丹麦设计带来与众不同的新风潮。
  尺寸：宽43 x深43 x高30厘米",
  price: 2700,
  stock: 5,
  image: open("https://menu.kontainer.com/resources/thumb.php?id=3525118&size=2000x2000&w=02c4aaeba10b2eae7ca0c76c7680c774")
  category: "桌子",
  )

Product.create!(name: "muuto- Nerd Chair",
  description: "出自David Geckeler的作品，取名Nerd趣味的书呆子之名，但在设计考研上，毫不马虎，细腻的木面加弯，呈现座面不规律下带有一份柔性之美，别开生面地将椅面，椅背以穿插方式相辅相成，打造出一款让人惊艳的生活作品自然的原木气息，在橡木原色之下，也提供了梣木多种缤纷漆面的选择，让设计更富当代风味尺寸。
  宽45厘米x高79厘米x深50厘米",
  price: 5700,
  stock: 5,
  image: open("http://download.muuto.com/files/Nerd_Petroleum_turqoise.jpg")
  category: "椅子",
  )

Product.create!(name: "muuto- Around Coffee Table",
  description: "出自托马斯Bentzen的作品，咖啡桌附近北欧斯堪地纳维亚的简约风格，以木质运用，覆上轻轻的一层年轻色彩，打造多种不同的丰富表情。收边处，有着木料加弯技术，让整体形构，更加具有层次感。可作为客厅边桌，茶几，咖啡桌等使用。
  周围有两种尺寸：
  小尺寸：圆直径45 x高46厘米
  大尺寸：圆直径72 x高37.5厘米",
  price: 8000,
  stock: 5,
  image: open("http://download.muuto.com/files/Around_group_oak_white_med-res.jpg")
  category: "桌子",
  )

Product.create!(name: "muuto- Nerd Bar Stool",
  description: "出自David Geckeler的作品，取名Nerd趣味的书呆子之名，但在设计考研上，毫不马虎，细腻的木面加弯，呈现座面不规律下带有一份柔性之美，别开生面地将椅面，椅背以穿插方式相辅相成，打造出一款让人惊艳的生活作品。自然的原木气息，在橡木原色之下，也提供了梣木多种缤纷漆面的选择，让设计更富当代风味。
  高尺寸：宽45 x深46 x高89厘米，高高75厘米",
  price: 6450,
  stock: 5,
  image: open("http://download.muuto.com/files/Nerd_familie%20bar2.jpg")
  category: "椅凳",
  )

Product.create!(name: "muuto- Oslo Three Seater Sofa",
  description: "出自Anderssen＆Voll的设计作品，此系列沙发是在挪威西海岸制作的，造型极度简约，沙发坐垫上的分割线，以及内层加强座垫蓬松度的设计，让座垫拥有抱枕般厚度，表达 了解Anderssen＆Voll对空气美学的理解，并用极细的钢材椅脚展现整体设计的优雅感。
  尺寸：宽200厘米x高78厘米x深73厘米
  座位高度：45厘米",
  price: 43000,
  stock: 5,
  image: open("http://download.muuto.com/files/Oslo_3seater_Steelcut660_Red_L_g.jpg")
  category: "沙发",
  )

Product.create!(name: "STUA- GAS 旋轉椅",
  description: "2011年气系列延伸推出具升降功能的滑轮办公椅，独特的弓形底架，优雅的撑托椅座，抛光亮面的镀铬结构更显摩登俐落的现代感。",
  price: 6200,
  stock: 5,
  image: open("http://www.images.stua.com/wp-content/uploads/stua-gas-0259.jpg")
  category: "椅子",
  )

Product.create!(name: "STUA- Eclipse 咖啡桌",
  description: "简约雅致的Eclipse边几系列，取材自然的有机外型，仿佛池塘中的浮萍，为室内空间带来怡人的自然气息。
  Eclipse边几系列共有四种尺寸，较小款式可收纳至较大款式桌面下，轻巧好收纳，桌脚均附毛毛垫保护可放置于地毯上。
  小型：37 x 46 x高20厘米
  中型：44 x 55 x高25厘米
  大型：56 x 71 x高30厘米
  特大型：77 x 111 x高35厘米",
  price: 9300,
  stock: 5,
  image: open("http://www.images.stua.com/wp-content/uploads/stua-eclipse-0206.jpg")
  category: "桌子",
  )

Product.create!(name: "STUA- Onda 吧台椅",
  description: "Onda椅凳系列是STUA创立者，西班牙设计师Jesus Gasca在2006年推出的作品，符合人体工学的舒适考量融入柔美的椅座曲线，椅背则可轻托住乘坐者的下背部，即使久 坐也不会感到不适，椅壳部分可旋转，采用坚固的硬质塑料，椅座可选择搭配橡胶薄垫材质，椅脚为镀铬钢材.
  Onda 75吧台椅：宽41 x深38 x高93 /座高 75厘米",
  price: 3950,
  stock: 5,
  image: open("http://www.images.stua.com/wp-content/uploads/stua-onda-1667.jpg")
  category: "椅凳",
  )

Product.create!(name: "STUA- Malena 單座沙发",
  description: "简约舒适成就了Malena沙发，西班牙设计师Jon Gasca于1997年表这个沙发系列，木架结构多样的线条变化，在各个角度里表现出不同风貌，阶梯型的椅背有着线谱般的轻快韵律，为空间带来悠闲的度假气息。",
  price: 14125,
  stock: 5,
  image: open("http://www.images.stua.com/wp-content/uploads/stua-malena-0412.jpg")
  category: "沙发",
  )

Product.create!(name: "ferm living- Herman Lounge Chair - Black",
  description: "这个美丽的休闲椅由现有的赫尔曼椅子系列延伸而成，由橡木单板制成，镶嵌在粉末涂层的金属底座上。 低设计具有宽大的椭圆形底座和轻柔起伏的靠背，使身体环绕，最大程度地提高了坐姿。 提供一系列的颜色。
  颜色：黑色
  尺寸：W：68×H：68×D：60cm",
  price: 4500,
  stock: 5,
  image: open("https://www.fermliving.com/Admin/Public/getimage.ashx?Image=/files/Billeder/packshots/9404_1.jpg&Resolution=75&Compression=100&Width=600&Height=800&Crop=0&AlternativeImage=")
  category: "椅子",
  )

Product.create!(name: "ferm living- Cluster Tables - Multi",
  description: "直线和方形形状在简约而永恒的设计中与精致细薄的金属腿和实心表面形成对比。 无论您选择使用嵌套在一起的3个表，独立于一个组或单独放置在房子的不同房间中，您都可以清洁和时尚。 在粉末涂层金属制成的表格相对较轻 - 不仅在外观上，而且在某种意义上，您可以轻松地移动它们，并与我们内置的设计中的许多组合一起玩。
  尺寸：
  小：W：41×H：35×D：34cm。
  中：W：48×H：40×D：37cm。
  大：W：55×H：45×D：40cm",
  price: 3900,
  stock: 5,
  image: open("https://www.fermliving.com/Admin/Public/getimage.ashx?Image=/files/Billeder/packshots/3215_1.jpg&Resolution=75&Compression=100&Width=600&Height=800&Crop=0&AlternativeImage=")
  category: "桌子",
  )

Product.create!(name: "ferm living- Herman Stool ",
  description: "在一个优雅和现代的色彩，对比和纹理的游戏中，LIVING的凳子上铺有一层耐用和可持续的油毡，并镶嵌在经典的粉末涂层金属框架上。 由Herman Studio设计的可堆叠凳子设有宽大的椭圆形座椅。 色彩斑斓的时尚感给经典的剪影和季节性色彩的飞溅到您的房间。
  尺寸：W：35.5cm，H：43cm，D：30.5cm",
  price: 1200,
  stock: 5,
  image: open("https://www.fermliving.com/Admin/Public/getimage.ashx?Image=/files/Billeder/packshots/9411_1.jpg&Resolution=75&Compression=100&Width=600&Height=800&Crop=0&AlternativeImage=")
  category: "椅凳",
  )

Product.create!(name: "ferm living- Turn Sofa 2",
  description: "这款现代多功能的两座座椅全部为对比，因为严格的雕塑外形与有机曲线相辅相成。可逆的座垫是双色的，可以快速转动，以便您决定是否需要经典或更大胆的外观，具体取决于您的心情或个人喜好。无论您选择哪种颜色，这款沙发具有永恒和清洁的外观，其紧凑的内饰和粉末涂层金属的简单框架，而由于柔软的内部曲线和温暖的材料，这种沙发具有女性气质。
  除了轻盈细腻的金属腿，给人一种优雅，漂浮的表情 - 独特的尺寸使得沙发变得实用，易于适应您现有的家具，并与您的个人风格相融合。
  旋转沙发有几种装饰材料和色彩方式。
  尺寸：W：160×H：73×D：71cm",
  price: 16000,
  stock: 5,
  image: open("https://www.fermliving.com/Admin/Public/getimage.ashx?Image=/files/Billeder/packshots/9505_1.jpg&Resolution=75&Compression=100&Width=600&Height=800&Crop=0&AlternativeImage=")
  category: "沙发",
  )
