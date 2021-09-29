import { HttpContextContract } from '@ioc:Adonis/Core/HttpContext'

import ExpenceCategory from "App/Models/ExpenceCategory";

export default class ExpenceCategoriesController {
  public async store ({request}: HttpContextContract) {
    let obj = {
      type_name : request.all().type_name,
      amount : request.all().amount
    }
    return ExpenceCategory.create(obj)
  }

  public async show ({}: HttpContextContract) {
    return ExpenceCategory.query().select('*').orderBy('amount', 'desc')
  }

  public async updateTypeName ({request}: HttpContextContract) {
    let data = request.all()
    return ExpenceCategory.query().where('id', data.id).update({
      'type_name' : data.type_name
    })
  }

    public async increseExpenceAmount ({request}: HttpContextContract) {
    let data = request.all()
    return ExpenceCategory.query().where('id', data.id).update({
      'amount' : data.amount
    })
  }
  
  public async destroy ({request}: HttpContextContract) {
    let data = request.all()
    return ExpenceCategory.query().where('id', data.id).delete()
  }

  async getSingleExpenceItem({params} : HttpContextContract){
    return ExpenceCategory.query().select('*').where('id', params.id).first()
  }
}
