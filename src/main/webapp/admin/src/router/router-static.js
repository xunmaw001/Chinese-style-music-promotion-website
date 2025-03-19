import Vue from 'vue';
//配置路由
import VueRouter from 'vue-router'
Vue.use(VueRouter);
//1.创建组件
import Index from '@/views/index'
import Home from '@/views/home'
import Login from '@/views/login'
import NotFound from '@/views/404'
import UpdatePassword from '@/views/update-password'
import pay from '@/views/pay'
import register from '@/views/register'
import center from '@/views/center'
    import shipinzhuanqu from '@/views/modules/shipinzhuanqu/list'
    import fufeiyinle from '@/views/modules/fufeiyinle/list'
    import dingdanxinxi from '@/views/modules/dingdanxinxi/list'
    import leixingxinxi from '@/views/modules/leixingxinxi/list'
    import storeup from '@/views/modules/storeup/list'
    import discussxiquxinxi from '@/views/modules/discussxiquxinxi/list'
    import discussgequxinxi from '@/views/modules/discussgequxinxi/list'
    import discussshipinzhuanqu from '@/views/modules/discussshipinzhuanqu/list'
    import forum from '@/views/modules/forum/list'
    import yinlewenjian from '@/views/modules/yinlewenjian/list'
    import yonghu from '@/views/modules/yonghu/list'
    import leqileixing from '@/views/modules/leqileixing/list'
    import chat from '@/views/modules/chat/list'
    import xiquxinxi from '@/views/modules/xiquxinxi/list'
    import config from '@/views/modules/config/list'
    import gequxinxi from '@/views/modules/gequxinxi/list'


//2.配置路由   注意：名字
const routes = [{
    path: '/index',
    name: '首页',
    component: Index,
    children: [{
      // 这里不设置值，是把main作为默认页面
      path: '/',
      name: '首页',
      component: Home,
      meta: {icon:'', title:'center'}
    }, {
      path: '/updatePassword',
      name: '修改密码',
      component: UpdatePassword,
      meta: {icon:'', title:'updatePassword'}
    }, {
      path: '/pay',
      name: '支付',
      component: pay,
      meta: {icon:'', title:'pay'}
    }, {
      path: '/center',
      name: '个人信息',
      component: center,
      meta: {icon:'', title:'center'}
    }
          ,{
	path: '/shipinzhuanqu',
        name: '视频专区',
        component: shipinzhuanqu
      }
          ,{
	path: '/fufeiyinle',
        name: '付费音乐',
        component: fufeiyinle
      }
          ,{
	path: '/dingdanxinxi',
        name: '订单信息',
        component: dingdanxinxi
      }
          ,{
	path: '/leixingxinxi',
        name: '类型信息',
        component: leixingxinxi
      }
          ,{
	path: '/storeup',
        name: '我的收藏管理',
        component: storeup
      }
          ,{
	path: '/discussxiquxinxi',
        name: '戏曲信息评论',
        component: discussxiquxinxi
      }
          ,{
	path: '/discussgequxinxi',
        name: '歌曲信息评论',
        component: discussgequxinxi
      }
          ,{
	path: '/discussshipinzhuanqu',
        name: '视频专区评论',
        component: discussshipinzhuanqu
      }
          ,{
	path: '/forum',
        name: '论坛管理',
        component: forum
      }
          ,{
	path: '/yinlewenjian',
        name: '音乐文件',
        component: yinlewenjian
      }
          ,{
	path: '/yonghu',
        name: '用户',
        component: yonghu
      }
          ,{
	path: '/leqileixing',
        name: '乐器类型',
        component: leqileixing
      }
          ,{
	path: '/chat',
        name: '客服管理',
        component: chat
      }
          ,{
	path: '/xiquxinxi',
        name: '戏曲信息',
        component: xiquxinxi
      }
          ,{
	path: '/config',
        name: '轮播图管理',
        component: config
      }
          ,{
	path: '/gequxinxi',
        name: '歌曲信息',
        component: gequxinxi
      }
        ]
  },
  {
    path: '/login',
    name: 'login',
    component: Login,
    meta: {icon:'', title:'login'}
  },
  {
    path: '/register',
    name: 'register',
    component: register,
    meta: {icon:'', title:'register'}
  },
  {
    path: '/',
    name: '首页',
    redirect: '/index'
  }, /*默认跳转路由*/
  {
    path: '*',
    component: NotFound
  }
]
//3.实例化VueRouter  注意：名字
const router = new VueRouter({
  mode: 'hash',
  /*hash模式改为history*/
  routes // （缩写）相当于 routes: routes
})

export default router;
