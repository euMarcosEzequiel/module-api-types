import { Res } from '@nestjs/common'
import { CustomResponse } from './custom-response'

export abstract class ControllerBase {
  Ok(@Res() response, object: any) {
    return response.status(200).send(object)
  }
  Failed(@Res() response, object: CustomResponse) {
    return response.status(500).send(object)
  }
}