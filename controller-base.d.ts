import { CustomResponse } from './custom-response';
export declare abstract class ControllerBase {
    Ok(response: any, object: any): any;
    Failed(response: any, object: CustomResponse): any;
}
