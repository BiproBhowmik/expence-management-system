<template>
  <div id="app" class="container">
    <h1>Expence Management System Application</h1>
    <h4>Total <span style="color:green"> <strong>Income</strong> </span> = {{ totalIncomeAmount }} TK</h4>
    <h4>Total <span style="color:red"> <strong>Expence</strong> </span> = {{ totalExpenceAmount }} TK</h4>
    <h1>Total Cuttent Amount = {{ totalIncomeAmount - totalExpenceAmount }} TK</h1>
    <div class="row">
      
    <IncomeCategory/>

         <ExpenceCategory/>
  <IncomeExpenceComputation/>
    </div>

     
  </div>
</template>

<script>
import IncomeCategory from './components/IncomeCategory.vue'
import ExpenceCategory from './components/ExpenceCategory.vue'
import IncomeExpenceComputation from './components/IncomeExpenceComputation.vue'

const axios = require('axios');

export default {
  name: 'App',
  components: {
    IncomeCategory,
    ExpenceCategory,
    IncomeExpenceComputation
  },
  data(){
    return{
      totalIncomeAmount: 0,
      totalExpenceAmount: 0
    }
  },
  created()
    {
      axios.get('http://localhost:3333/showIncomeCategory')
      .then((response)=> {

      for (let i = 0; i < response.data.length; i++) {
        this.totalIncomeAmount += response.data[i].amount;
      }

    })
      .catch((error)=> {
      // handle error
      console.log(error);
    });

      axios.get('http://localhost:3333/showExpenceCategory')
      .then((response)=> {

      for (let i = 0; i < response.data.length; i++) {
        this.totalExpenceAmount += response.data[i].amount;
      }

    })
      .catch((error)=> {
      // handle error
      console.log(error);
    });

      
    }
}
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>
