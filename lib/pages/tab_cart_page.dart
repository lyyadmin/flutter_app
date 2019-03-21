import 'package:flutter/material.dart';
import '../bean/bean.dart';
import '../pages/page_book_detail.dart';

class CartPage extends StatelessWidget{
  
  final List<Book> items = List<Book>();
  CartPage(){
    items.add(Book('三寸人间', '耳根', 'https://www.23us.so/files/article/image/0/43/43s.jpg',' 举头三尺无神明，掌心三寸是人间。这是耳根继《仙逆》《求魔》《我欲封天》《一念永恒》后，创作的第五部长篇小说《三寸人间》。'));
    items.add(Book('元尊', '天蚕土豆', 'https://www.23us.so/files/article/image/13/13332/13332s.jpg','吾有一口玄黄气，可吞天地日月星。天蚕土豆最新鼎力大作，2017年度必看玄幻小说。'));
    items.add(Book('飞剑问道', '我吃西红柿', 'https://www.23us.so/files/article/image/3/3574/3574s.jpg','在这个世界，有狐仙、河神、水怪、大妖，也有求长生的修行者。 修行者们， 开法眼，可看妖魔鬼怪。 炼一口飞剑，可千里杀敌。 千里眼、顺风耳，更可探查四方。 …… 秦府二公子‘秦云’，便是一位修行者……'));
    items.add(Book('伏天氏', '净无痕', 'https://www.23us.so/files/article/image/14/14019/14019s.jpg','  东方神州，有人皇立道统，有圣贤宗门传道，有诸侯雄踞一方王国，诸强林立，神州动乱千万载，执此之时，一代天骄叶青帝及东凰大帝横空出世，斩人皇，驭圣贤，诸侯臣服，东方神州一统！ 然，叶青帝忽然暴毙，世间雕像尽皆被毁，于世间除名，沦为禁忌；从此神州唯东凰大帝独尊！ 十五年后，东海青州城，一名为叶伏天的少年，开启了他的传奇之路…'));
    items.add(Book('全球高武', '老鹰吃小鸡', 'https://www.23us.so/files/article/image/14/14914/14914s.jpg','今日头条—— “大马宗师突破九品，征战全球！” “小马宗师问鼎至高，横扫欧亚！” “乔帮主再次出手，疑似九品大宗师境！” “股神宝刀未老，全球宗师榜再入前十！” “……” 看着一条条新闻闪现，方平心好累，这剧本不对啊！'));
    items.add(Book('凡人修仙传仙界篇', '忘语', 'https://www.23us.so/files/article/image/9/9579/9579s.jpg','   凡人修仙，风云再起时空穿梭，轮回逆转金仙太乙，大罗道祖三千大道，法则至尊《凡人修仙传》仙界篇，一个韩立叱咤仙界的故事，一个凡人小子修仙的不灭传说。'));
  }
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('购物车'),
      ),
      body: new ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: items.length,
        itemBuilder: (context,index){
          final item = items[index];
          return Dismissible(
            key: Key(item.name),
            onDismissed: (direction){
              items.removeAt(index);
              Scaffold.of(context).showSnackBar(
                SnackBar(
                  content: Text('$item dismissed'),
                )
              );
            },
            background: Container(color: Colors.red,),
            child: ListTile(
              leading: Image.network('${items[index].iconPath}',fit: BoxFit.cover,),
              trailing: Icon(Icons.arrow_right,color: Colors.grey,size: 22.0,),
              title: new Text('${items[index].name}'),
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>BookDetail(book: item))),
            ),
          );
        },
      )
    );
  }
}