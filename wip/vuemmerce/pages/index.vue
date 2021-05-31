<template>
  <div>
    <VmHero></VmHero>
    <VmProductsList></VmProductsList>
  </div>
</template>

<script>
import VmProductsList from '@/components/products_list/ProductsListContainer';
import VmHero from '@/components/hero/Hero';
import axios from 'axios'

export default {
  name: 'index',
  components: {
    VmProductsList,
    VmHero
  },

  created(){
    axios.get('http://127.0.0.1/api/products.php')
        .then((response) => {
            this.$store.state.products = response.data;
        })
  }
};
</script>
