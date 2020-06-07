<template>
  <el-tree :data="data" :props="defaultProps" @node-click="handleNodeClick"></el-tree>
</template>

<script>
//这里可以导入其他文件
//import <组件名称》 form 《组件路径》

export default {
  //import 引入的组件需要注入到对象中才能使用
  components: {},
  props: {},
  data() {
    return {
      data: [],
      defaultProps: {
        children: "children",
        label: "label"
      }
    };
  },

  //计算属性 类似于data概念
  computed: {},
  //监控data中的数据变化
  watch: {},
  //方法集合
  methods: {
    handleNodeClick(data) {
      console.log(data);
    },
    getMenus(){
          this.$http({
              url: this.$http.adornUrl('/product/category/list/tree'),
              method: 'get'
            //   params: this.$http.adornParams({
            //       'page': this.pageIndex,
            //       'limit': this.pageSize,
            //       'roleName': this.dataForm.roleName
            //   })
          }).then(({data}) => {
              console.log("successfully get the data...", data)
          })
      }
  },

  //生命周期 - 挂在完成(可以访问DOM元素)
  created(){
      this.getMenus();
  },
  mounted() {},
  beforeCreate() {},
  beforeMount() {},
  beforeUpdate() {},
  updated() {},
  beforeDestroy() {},
  destroyed() {},
  activated() {}
};
</script>
<style lang='scss' scoped>
//@import url(); 引入公共css类
</style>