/*
|--------------------------------------------------------------------------
| Routes
|--------------------------------------------------------------------------
|
| This file is dedicated for defining HTTP routes. A single file is enough
| for majority of projects, however you can define routes in different
| files and just make sure to import them inside this file. For example
|
| Define routes in following two files
| ├── start/routes/cart.ts
| ├── start/routes/customer.ts
|
| and then import them inside `start/routes.ts` as follows
|
| import './routes/cart'
| import './routes/customer'
|
*/

import Route from '@ioc:Adonis/Core/Route'

Route.get('/', async () => {
  return { hello: 'world' }
})

// Income Category CRUD routs

Route.get('/showIncomeCategory', 'IncomCategoriesController.show')  //Show all income category
Route.get('/getSingleIncomeItem/:id', 'IncomCategoriesController.getSingleIncomeItem')
Route.post('/storeIncomeCategory', 'IncomCategoriesController.store')
Route.post('/updateIncomeCategoryTypeName', 'IncomCategoriesController.updateTypeName')
Route.post('/destroyIncomeCategory', 'IncomCategoriesController.destroy')
Route.post('/increseIncomeAmount', 'IncomCategoriesController.increseIncomeAmount')

// Income Category CRUD routs

// Expence Category CRUD routs

Route.get('/showExpenceCategory', 'ExpenceCategoriesController.show')  //Show all Expence category
Route.get('/getSingleExpenceCategoryItem/:id', 'ExpenceCategoriesController.getSingleExpenceItem')
Route.post('/storeExpenceCategory', 'ExpenceCategoriesController.store')
Route.post('/updateExpenceCategoryTypeName', 'ExpenceCategoriesController.updateTypeName')
Route.post('/destroyExpenceCategory', 'ExpenceCategoriesController.destroy')
Route.post('/increseExpenceAmount', 'ExpenceCategoriesController.increseExpenceAmount')

// Expence Category CRUD routs


