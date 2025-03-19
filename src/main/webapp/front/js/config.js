
var projectName = '中国风音乐推介网站';
/**
 * 轮播图配置
 */
var swiper = {
	// 设定轮播容器宽度，支持像素和百分比
	width: '100%',
	height: '400px',
	// hover（悬停显示）
	// always（始终显示）
	// none（始终不显示）
	arrow: 'none',
	// default（左右切换）
	// updown（上下切换）
	// fade（渐隐渐显切换）
	anim: 'default',
	// 自动切换的时间间隔
	// 默认3000
	interval: 2000,
	// 指示器位置
	// inside（容器内部）
	// outside（容器外部）
	// none（不显示）
	indicator: 'outside'
}

/**
 * 个人中心菜单
 */
var centerMenu = [{
	name: '个人中心',
	url: '../' + localStorage.getItem('userTable') + '/center.html'
}, 
{
	name: '我的发布',
	url: '../forum/list-my.html'
},

{
	name: '我的收藏',
	url: '../storeup/list.html'
}
]


var indexNav = [

{
	name: '歌曲信息',
	url: './pages/gequxinxi/list.html'
}, 
{
	name: '戏曲信息',
	url: './pages/xiquxinxi/list.html'
}, 
{
	name: '视频专区',
	url: './pages/shipinzhuanqu/list.html'
}, 
{
	name: '付费音乐',
	url: './pages/fufeiyinle/list.html'
}, 

{
	name: '论坛信息',
	url: './pages/forum/list.html'
}, 
]

var adminurl =  "http://localhost:8080/ssm4kh3q/admin/dist/index.html";

var cartFlag = false

var chatFlag = false


chatFlag = true


var menu = [{"backMenu":[{"child":[{"buttons":["修改","删除","查看"],"menu":"用户","menuJump":"列表","tableName":"yonghu"}],"menu":"用户管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"类型信息","menuJump":"列表","tableName":"leixingxinxi"}],"menu":"类型信息管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"乐器类型","menuJump":"列表","tableName":"leqileixing"}],"menu":"乐器类型管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"歌曲信息","menuJump":"列表","tableName":"gequxinxi"}],"menu":"歌曲信息管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"戏曲信息","menuJump":"列表","tableName":"xiquxinxi"}],"menu":"戏曲信息管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"视频专区","menuJump":"列表","tableName":"shipinzhuanqu"}],"menu":"视频专区管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"付费音乐","menuJump":"列表","tableName":"fufeiyinle"}],"menu":"付费音乐管理"},{"child":[{"buttons":["查看","修改","删除","发送文件"],"menu":"订单信息","menuJump":"列表","tableName":"dingdanxinxi"}],"menu":"订单信息管理"},{"child":[{"buttons":["查看","修改","删除"],"menu":"音乐文件","menuJump":"列表","tableName":"yinlewenjian"}],"menu":"音乐文件管理"},{"child":[{"buttons":["查看","删除"],"menu":"我的收藏管理","tableName":"storeup"}],"menu":"我的收藏管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"论坛管理","tableName":"forum"}],"menu":"论坛管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"轮播图管理","tableName":"config"},{"buttons":["新增","查看","修改","删除"],"menu":"客服管理","tableName":"chat"}],"menu":"系统管理"}],"frontMenu":[{"child":[{"buttons":["查看","购买"],"menu":"歌曲信息列表","menuJump":"列表","tableName":"gequxinxi"}],"menu":"歌曲信息模块"},{"child":[{"buttons":["查看"],"menu":"戏曲信息列表","menuJump":"列表","tableName":"xiquxinxi"}],"menu":"戏曲信息模块"},{"child":[{"buttons":["查看"],"menu":"视频专区列表","menuJump":"列表","tableName":"shipinzhuanqu"}],"menu":"视频专区模块"},{"child":[{"buttons":["查看","购买"],"menu":"付费音乐列表","menuJump":"列表","tableName":"fufeiyinle"}],"menu":"付费音乐模块"}],"roleName":"管理员","tableName":"users"},{"backMenu":[{"child":[{"buttons":["查看","支付","删除"],"menu":"订单信息","menuJump":"列表","tableName":"dingdanxinxi"}],"menu":"订单信息管理"},{"child":[{"buttons":["查看"],"menu":"音乐文件","menuJump":"列表","tableName":"yinlewenjian"}],"menu":"音乐文件管理"},{"child":[{"buttons":["查看","删除"],"menu":"论坛管理","tableName":"forum"}],"menu":"论坛管理"},{"child":[{"buttons":["查看","删除"],"menu":"我的收藏管理","tableName":"storeup"}],"menu":"我的收藏管理"}],"frontMenu":[{"child":[{"buttons":["查看","购买"],"menu":"歌曲信息列表","menuJump":"列表","tableName":"gequxinxi"}],"menu":"歌曲信息模块"},{"child":[{"buttons":["查看"],"menu":"戏曲信息列表","menuJump":"列表","tableName":"xiquxinxi"}],"menu":"戏曲信息模块"},{"child":[{"buttons":["查看"],"menu":"视频专区列表","menuJump":"列表","tableName":"shipinzhuanqu"}],"menu":"视频专区模块"},{"child":[{"buttons":["查看","购买"],"menu":"付费音乐列表","menuJump":"列表","tableName":"fufeiyinle"}],"menu":"付费音乐模块"}],"roleName":"用户","tableName":"yonghu"}]


var isAuth = function (tableName,key) {
    let role = localStorage.getItem("userTable");
    let menus = menu;
    for(let i=0;i<menus.length;i++){
        if(menus[i].tableName==role){
            for(let j=0;j<menus[i].backMenu.length;j++){
                for(let k=0;k<menus[i].backMenu[j].child.length;k++){
                    if(tableName==menus[i].backMenu[j].child[k].tableName){
                        let buttons = menus[i].backMenu[j].child[k].buttons.join(',');
                        return buttons.indexOf(key) !== -1 || false
                    }
                }
            }
        }
    }
    return false;
}

var isFrontAuth = function (tableName,key) {
    let role = localStorage.getItem("userTable");
    let menus = menu;
    for(let i=0;i<menus.length;i++){
        if(menus[i].tableName==role){
            for(let j=0;j<menus[i].frontMenu.length;j++){
                for(let k=0;k<menus[i].frontMenu[j].child.length;k++){
                    if(tableName==menus[i].frontMenu[j].child[k].tableName){
                        let buttons = menus[i].frontMenu[j].child[k].buttons.join(',');
                        return buttons.indexOf(key) !== -1 || false
                    }
                }
            }
        }
    }
    return false;
}
