import { HttpContextContract } from '@ioc:Adonis/Core/HttpContext'
import IncomCategory from "App/Models/IncomCategory";

export default class IncomCategoriesController {

  public async store ({request}: HttpContextContract) {
    let obj = {
      type_name : request.all().type_name,
      amount : request.all().amount
    }
    return IncomCategory.create(obj)
  }

  public async show ({}: HttpContextContract) {
    return IncomCategory.query().select('*').orderBy('amount', 'desc')
  }

  public async updateTypeName ({request}: HttpContextContract) {
    let data = request.all()
    return IncomCategory.query().where('id', data.id).update({
      'type_name' : data.type_name
    })
  }

  public async increseIncomeAmount ({request}: HttpContextContract) {
    let data = request.all()
    return IncomCategory.query().where('id', data.id).update({
      'amount' : data.amount
    })
  }

  public async destroy ({request}: HttpContextContract) {
    let data = request.all()
    return IncomCategory.query().where('id', data.id).delete()
  }

  async getSingleIncomeItem({params} : HttpContextContract){
    return IncomCategory.query().select('*').where('id', params.id).first()
  }
}
