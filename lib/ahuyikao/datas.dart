import 'bean.dart';
import 'package:flutter/material.dart';

class DataUtil{
  static List<ClassItem> getClassItemsData(){
    List<ClassItem> sitems = List<ClassItem>();
    sitems.add(ClassItem(title: '至尊',price:'预付教材费580元',content: '免费开通全部直播课程，题库，真题，密卷',time: '考试通过后付4000元，不过分文不取',color: Color(0xffd18785),path: 'images/ic_cost_performance.png'));
    sitems.add(ClassItem(title: '全程无忧',price:'直接支付1980元',content: '免费开通全部直播课程(含教材)，题库，真题，密卷',time: '有效期至当年考试结束',color: Color(0xff9677b9),path: 'images/ic_recommended.png'));
    sitems.add(ClassItem(title: '零风险',price:'考试前无需支付任何费用',content: '免费开通全部直播课(不含教材)，题库，真题，密卷',time: '考试通过后付7280元，不过分文不取',color: Color(0xff5bcdc0)));
    sitems.add(ClassItem(title: '0元',price:'考试前无需支付任何费用',content: '免费开通全部直播课程(含教材)，题库，真题，密卷',time: '考试通过后付7980元，不过分文不取',color: Color(0xffe76b51)));
    sitems.add(ClassItem(title: '必过',price:'第一年不通过，第二年免费重修',content: '开通全部直播课程(含教材)，题库，真题，密卷，额外包括考前提分课',time: '一次性付款6800元',color: Color(0xffe8d89c)));
    sitems.add(ClassItem(title: '保过面授',price:'预付定金，面授付全款，不过全额退款',content: '开通全部直播课程(含教材)，题库，真题，密卷',time: '有效期至当年考试结束',color: Color(0xff9de1b9)));
    return sitems;
  }


}